#! /usr/bin/env python3

import rospy
from geometry_msgs.msg import PoseStamped
from dataclasses import dataclass
import socket
import time
import math
import numpy as np

@dataclass
class desired_output:
    x: float
    y: float
    z: float

    def __init__(self):
        self.x = 0
        self.y = 0
        self.z = 0

    def create(self, data, euler: list):
        self.x = data.pose.position.x * 100
        self.y = data.pose.position.z * 100
        self.z = euler[2]
        return self

# Initialize global variables
sock = None
last_position = {'x': 0.0, 'y':0.0, 'z':0.0}

def calculate_x_and_y_into_2d_plane(x:float, y:float): 
    # system of equations
    # y = m_x * x + b_x
    # y = m_y * x + b_y
    
    # this is perfect aligned on x, y
    # m_x=0.893221434057349
    # b_x=-84.33475357671148
    # m_y=-0.9035819699090034
    # b_y=-49.086752441398865

    # this is aligning vizual to center
    m_x=0.9107279408356221
    b_x=-87.41791563694846
    m_y=-0.9105694388668829
    b_y=-51.09337870893341
    [x_2d, y_2d] = np.dot([[m_x, 0], [0, m_y]], [x, y]) + [b_x, b_y]
    return x_2d, y_2d


def quaternion_to_euler(data: PoseStamped):

    # quaternion to euler z == the heading
    x = data.pose.orientation.x 
    y = data.pose.orientation.z  # figure out the mapping between axis in system and in out system
    z = data.pose.orientation.y 
    w = data.pose.orientation.w 
    
    t0 = +2.0 * (w * x + y * z)
    t1 = +1.0 - 2.0 * (x * x + y * y)
    X = math.atan2(t0, t1)

    t2 = +2.0 * (w * y - z * x)
    t2 = +1.0 if t2 > +1.0 else t2
    t2 = -1.0 if t2 < -1.0 else t2
    Y = math.asin(t2)

    t3 = +2.0 * (w * z + x * y)
    t4 = +1.0 - 2.0 * (y * y + z * z)
    Z = math.atan2(t3, t4)

    return [X, Y, Z]

def send_udp_message(host, port, message):
    print(f"sending udp message: {message}")
    global sock
    if sock is None:
        sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.sendto(message.encode(), (host, port))
    rospy.loginfo(f"UDP message sent to {host}:{port}: {message}")

def has_position_changed(new_position, threshold=0.001):
    global last_position
    for axis in ['x', 'y', 'z']:
        if last_position[axis] is not None:
            if abs(new_position[axis] - last_position[axis]) > threshold:
                return True
    return False

def update_position(new_position, data):
    global last_position
    last_position = new_position
    return data


def callback(data):
    time.sleep(0.001)
    host = rospy.get_param('~host', '10.205.3.82')
    port = rospy.get_param('~port', 9876)

    new_position = {
        'x': round(data.pose.position.x,4),
        'y': round(data.pose.position.z,4),
        'z': round(data.pose.position.y,4)
    }

    if has_position_changed(new_position):
        #import pdb;pdb.set_trace()
        
        data = update_position(new_position, data)
        desired_output_t = desired_output().create(data, quaternion_to_euler(data))
        x,y = calculate_x_and_y_into_2d_plane(x=desired_output_t.x, y=desired_output_t.y)
        message = f"[{x},{y},{desired_output_t.z}]"
        send_udp_message(host, port, message)

def listener():

    rospy.init_node('nodelistener_table_vui', anonymous=True)
    name = rospy.get_param('~body', default='odysseus')
    rospy.Subscriber(f"/mocap_node/{name}/pose", PoseStamped, callback)
    rospy.spin()
        

if __name__ == '__main__':
    try:
        listener()
    finally:
        if sock is not None:
            sock.close()
