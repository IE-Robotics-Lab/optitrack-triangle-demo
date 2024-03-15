#! /usr/bin/env python3

import rospy
from geometry_msgs.msg import PoseStamped
import socket
import time

# Initialize global variables
sock = None
last_position = {'x': 0.0, 'y':0.0, 'z':0.0}
def transform_3d_to_screen(x_3d, y_3d, z_3d):
    base_point_3d = {'x': -0.91898512840271, 'y': -0.012919454835355282, 'z': -2.4494717121124268}
    x_base_3d, y_base_3d, z_base_3d = base_point_3d['x'], base_point_3d['y'], base_point_3d['z']
    
    # Calculate deltas from 3D base
    delta_x_3d = x_3d - x_base_3d
    delta_y_3d = y_3d - y_base_3d
    # Note: delta_z_3d is not directly used for calculating screen x, y

    avg_offset_x_per_unit_x = 0.0035450321435928343
    offset_y_per_unit_y = 9.356276597827673e-05
    
    # Reverse apply offsets to estimate screen coordinates
    x_screen_estimated = delta_x_3d / avg_offset_x_per_unit_x
    y_screen_estimated = delta_y_3d / offset_y_per_unit_y  
    
    return [x_screen_estimated, y_screen_estimated, 2.0]

def send_udp_message(host, port, message):
    print(f"sending udp message: {message}")
    global sock
    if sock is None:
        sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.sendto(message.encode(), (host, port))
    rospy.loginfo(f"UDP message sent to {host}:{port}: {message}")

def has_position_changed(new_position, threshold=0.01):
    global last_position
    for axis in ['x', 'y', 'z']:
        if last_position[axis] is not None:
            if abs(new_position[axis] - last_position[axis]) > threshold:
                return True
    return False

def update_position(new_position):
    global last_position
    last_position = new_position

def callback(data):
    host = rospy.get_param('~host', '10.205.3.20') # set the host to 
    port = rospy.get_param('~port', 9876)

    new_position = {
        'x': round(data.pose.position.x,2),
        'y': round(data.pose.position.y,2),
        'z': round(data.pose.position.z,2)
    }

    if has_position_changed(new_position):
        #import pdb;pdb.set_trace()
        update_position(new_position)
        new_position = transform_3d_to_screen(new_position['x'], new_position['y'], new_position['z'])
        print(f"new_position:{new_position}")
        message = f"[{new_position[0]},{new_position[1]},{new_position[2]}]"
        send_udp_message(host, port, message)

def listener():
    rospy.init_node('nodelistener', anonymous=True)
    rospy.Subscriber("/mocap_node/vera/pose", PoseStamped, callback)
    rospy.spin()

if __name__ == '__main__':
    try:
        listener()
    finally:
        if sock is not None:
            sock.close()  

