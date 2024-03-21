# Install script for directory: /home/vera/optitrack-triangle-demo/rigid_body_triangle_demo/src/natnet_ros_cpp

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/vera/optitrack-triangle-demo/rigid_body_triangle_demo/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/natnet_ros_cpp/srv" TYPE FILE FILES "/home/vera/optitrack-triangle-demo/rigid_body_triangle_demo/src/natnet_ros_cpp/srv/MarkerPoses.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/natnet_ros_cpp/cmake" TYPE FILE FILES "/home/vera/optitrack-triangle-demo/rigid_body_triangle_demo/build/natnet_ros_cpp/catkin_generated/installspace/natnet_ros_cpp-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/vera/optitrack-triangle-demo/rigid_body_triangle_demo/devel/include/natnet_ros_cpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/vera/optitrack-triangle-demo/rigid_body_triangle_demo/devel/share/roseus/ros/natnet_ros_cpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/vera/optitrack-triangle-demo/rigid_body_triangle_demo/devel/share/common-lisp/ros/natnet_ros_cpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/vera/optitrack-triangle-demo/rigid_body_triangle_demo/devel/share/gennodejs/ros/natnet_ros_cpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/vera/optitrack-triangle-demo/rigid_body_triangle_demo/devel/lib/python3/dist-packages/natnet_ros_cpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/vera/optitrack-triangle-demo/rigid_body_triangle_demo/devel/lib/python3/dist-packages/natnet_ros_cpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/vera/optitrack-triangle-demo/rigid_body_triangle_demo/build/natnet_ros_cpp/catkin_generated/installspace/natnet_ros_cpp.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/natnet_ros_cpp/cmake" TYPE FILE FILES "/home/vera/optitrack-triangle-demo/rigid_body_triangle_demo/build/natnet_ros_cpp/catkin_generated/installspace/natnet_ros_cpp-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/natnet_ros_cpp/cmake" TYPE FILE FILES
    "/home/vera/optitrack-triangle-demo/rigid_body_triangle_demo/build/natnet_ros_cpp/catkin_generated/installspace/natnet_ros_cppConfig.cmake"
    "/home/vera/optitrack-triangle-demo/rigid_body_triangle_demo/build/natnet_ros_cpp/catkin_generated/installspace/natnet_ros_cppConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/natnet_ros_cpp" TYPE FILE FILES "/home/vera/optitrack-triangle-demo/rigid_body_triangle_demo/src/natnet_ros_cpp/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/natnet_ros_cpp" TYPE PROGRAM FILES "/home/vera/optitrack-triangle-demo/rigid_body_triangle_demo/build/natnet_ros_cpp/catkin_generated/installspace/helper_node.py")
endif()

