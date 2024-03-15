#! /usr/bin/env python3

import rospy
from geometry_msgs.msg import PoseStamped
import socket
import time


sock = None

def send_udp_message(host, port, message):
    global sock
    if sock is None:
        sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.sendto(message.encode(), (host, port))
    rospy.loginfo(f"UDP message sent to {host}:{port}: {message}")

def callback(data):
    host = rospy.get_param('~host', '10.205.3.20')
    port = rospy.get_param('~port', 9876)

    x = round(data.pose.position.x,4)
    y = round(data.pose.position.y,4)
    z = round(data.pose.position.z,4)
    
    message = f"[{x},{y},{z}]"
    send_udp_message(host, port, message)

def listener():

    rospy.init_node('listener_simple', anonymous=True)
    rospy.Subscriber("/mocap_node/vera/pose", PoseStamped, callback)
    rospy.spin()

if __name__ == '__main__':
    try:
        listener()
    finally:
        if sock is not None:
            sock.close()  # Ensure the socket is closed on program exit

