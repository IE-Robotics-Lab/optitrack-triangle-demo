#! /usr/bin/env python3

import rospy
from geometry_msgs.msg import PoseStamped
import socket
import time

# Initialize global variables
sock = None
last_position = {'x': 0.0, 'y':0.0, 'z':0.0}

def send_udp_message(host, port, message):
    """
    Sends a message to the specified host and port via UDP.
    """
    print(host, port)
    global sock
    if sock is None:
        sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.sendto(message.encode(), (host, port))
    rospy.loginfo(f"UDP message sent to {host}:{port}: {message}")

def has_position_changed(new_position, threshold=0.01):
    """
    Checks if the position has changed by more than the threshold in any of the x, y, or z coordinates.
    """
    global last_position
    print(f"last position was: {last_position}, new position is: {new_position}")
    for axis in ['x', 'y', 'z']:
        if last_position[axis] is not None:
            if abs(new_position[axis] - last_position[axis]) > threshold:
                return True
    return False

def update_position(new_position):
    """
    Updates the stored position with the new position.
    """
    global last_position
    last_position = new_position

def callback(data):
    """
    Callback function for ROS subscriber.
    Sends UDP message only if the position has changed significantly.
    """
    host = rospy.get_param('~host', '10.205.3.36')
    port = rospy.get_param('~port', 9876)

    
    new_position = {
        'x': data.pose.position.x,
        'y': data.pose.position.y,
        'z': data.pose.position.z
    }

    if has_position_changed(new_position):
        print(f"moving to {new_position}")
        update_position(new_position)
        message = f"[{new_position['x']},{new_position['y']},{new_position['z']}]"
        send_udp_message(host, port, message)

def listener():
    """
    Initializes ROS node, subscribes to /mocap_node/vera/pose, and starts the ROS event loop.
    """
    rospy.init_node('nodelistener', anonymous=True)
    rospy.Subscriber("/mocap_node/vera/pose", PoseStamped, callback)
    rospy.spin()

if __name__ == '__main__':
    try:
        listener()
    finally:
        if sock is not None:
            sock.close()  # Ensure the socket is closed on program exit
