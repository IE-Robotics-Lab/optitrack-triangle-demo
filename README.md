# Tangible Visual Interface  
  
  
This tangible visual interface connects the optitrack system, reading information from rigid bodies, and visualizes them in the GAML interface.   
The data flow diagram looks as follows:  
  
  
The [mocap_ws](./../mocap_ws/) contains the mocap_optitrack package which allows us read data from the optitrack system.  
  
The [natnet_ws](./../natnet_ws/) contains the configurations for setting up the NATNET server.  
  
  
### Setting up the NATNET server:  
- You need to edit the launch file with the correct ip-address.   
  
### Setting up the MOCAP_OPTITRACK PACKAGE  
In order to read the data of the bodies, you need to edit the config/mocap.yaml file, and add the rigid bodies accordingly.  
It is important that the rigid body id (which is portrayed in the optitrack system, when you create a rigid body) coincides with the id in the yaml. E.g ridig body 'odysseus' pertains to id=1.  
Here is a base version of the yaml with one rigid body:  
  
```yaml  
  
  
```  
  
after that, you can set up the system by running:  
  
```bash  
source devel/setup.bash  
roslaunch mocap_optitrack mocap.launch  
```  
You should see the following output in the terminal:  
#TODO  
  
The you can launch the table_vui package by running:  
  
```  
source devel/setup.bash  
roslaunch table_vui many_object_launch.launch  
```  
If you observe the launch file you will see that we use the same file and just re-parametrize the node, port, and name of the body which we will be projecting in GAML.  
Finally, you can execute the [GAML Script](#TODO) in the GAML platform.   
  

## DEMO


## DEV FAQS  
  
1. What if my grid in GAML doesn't match with the plane that I want to project on?  
Yes! That is very possible... since I used a table in a specific position it is very likely that the **keystone** variable will have to be updated by YOU!  
The way to do this is simple.   
  
> Keystone: the keystone allows to modify the location of the 4 corner points of the environment bounding box. This is really important when the simulation is projected on a screen or a 3D map as the projector can introduce some image distortions.  A Copy as facet button can also be clicked to save the values of the keystone configuration in the clipboard encoded in a GAML facet. This can then be pasted in the display of your model to reuse this configuration at the next experiment run. Source: https://gama-platform.org/wiki/1.8.1/Displays

Steps: 
1. Click on the grid
2. Press the key: K
3. Click & drag the corners to the corners of your surface
	1. Click to activate drag
	2. click to deactivate drag
4. Once aligned with your desired surface, you save the configuration by pressing the key: K. 
5. This will have copied your keystone. Use it as used in the [GAML SCRIPT]()

2. What if I have changed my destination surface, so now the x,y,z values between Optitrack and my destination surface mismatch?

No worries, check the following [example script]() to transform sampled coordinate pairs between your grid and optitrack, into a m and b term for the x, and y axis, in order to correctly interpret the incoming data. 

You then need to use the results in the [table_vui/src/follow_many_objects.py] script. 

4. Why am I sending the Z term of the euler angle as the Z coordinate?
Since I only need to project on a 2D plane, I am actually using the Z-Coordinate as orientation. 

5. How do I connect to the projector? 
You can use a Google Chromecast, but for realtime results, I recommend you connect your computer with the GAML code to the Fiber-Optic HDMI Connected to the truss (behind the rack)


