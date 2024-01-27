#!/bin/bash

# Initialize turtlesim and set the initial pen color for 'S'
initialize_turtlesim() {
    rosrun turtlesim turtlesim_node &
    sleep 2
    rosservice call /turtle1/set_pen '255 0 0 2 0'  # Red color for 'S'
}

# Function to draw the letter 'S'
draw_S() {

    rosrun turtlesim turtle_teleport_absolute 5.5 10.5 0
    rosrun turtlesim turtle_teleport_relative 2.0 0
    rosrun turtlesim turtle_teleport_relative 0 -2.0
    rosrun turtlesim turtle_teleport_relative -2.0 0
    rosrun turtlesim turtle_teleport_relative 0 -2.0
    rosrun turtlesim turtle_teleport_relative 2.0 0
}

# Function to draw the letter 'A'
draw_A() {
    # Change to blue color for 'A'
    rosservice call /turtle1/set_pen '0 0 255 2 0'
   
    rosrun turtlesim turtle_teleport_absolute 2.0 5.5 0
    rosrun turtlesim turtle_teleport_relative 2.0 5.0
    rosrun turtlesim turtle_teleport_relative 2.0 -5.0
    rosrun turtlesim turtle_teleport_relative 0 2.5
    rosrun turtlesim turtle_teleport_relative 2.0 0
}

# Main script execution
initialize_turtlesim
draw_S
draw_A
