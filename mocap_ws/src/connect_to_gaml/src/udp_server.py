#! /usr/bin/env python3
import socket
import time
import random

def udp_emitter(host='10.22.159.24', port=9876):
    
    """
    A UDP emitter that sends different x, y, z coordinates to the specified host and port every 5 seconds.
    """
    with socket.socket(socket.AF_INET, socket.SOCK_DGRAM) as sock:
        for i in range(100): 
            x = random.randint(0, 250)
            y = random.randint(0, 250)
            z = random.randint(0, 10)
           
            message = f"[{x},{y},{z}]"
            
            sock.sendto(message.encode(), (host, port))

            print(f"Message sent: {message}")
            time.sleep(5)  

if __name__ == "__main__":
    udp_emitter()  

