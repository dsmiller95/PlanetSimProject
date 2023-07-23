# Processing Planet sim project

This is a project setup which is meant to demonstrate the benefits of object-oriented programming, by laying out a path of feature changes to a starter template which will guide you into object oriented programming.

First get set up with processing and open the starter template. Then, work through the refactoring tasks in series to make the system more extensible.

These tasks will become harder, and at some point you will need to change how the code is structured in order to manage the growing complexity. It is up to you to decide when you want to make these changes, based on the immediate cost of the changes and the potential future savings of making the change.


## Getting started

This project uses Processing. [Download processing from the processing website](https://processing.org/download).

Pick whether you want to use Python or Java, and open the corresponding .pde project.
Currently, only Java has a starting template.

## The starter template

The starter template will contain a simple 2d simulation of two bodies, acting on each other using a pseudo-gravitational force. This code is written in a way that would be pretty awkward to expand to 3, 8, or N bodies. However, this code should contain all the system calls we need to actually render the most basic form of this simulation.


# Tasks 

Following are the series of expansions to the functionality of the app to make, in order.


## 1 More planetary bodies

Your first task is to expand the starter template to support up to 4 different planetary bodies. Remember that every planetary body must exert force on every other planetary body.

You will know you're done when 4 planetary bodies render on the screen on startup, and all pull on each other. Depending on the initial velocity of these bodies, they may all clump up at the center, or fly out past the screen.


## 2 Edge interaction

The second task is to keep the planetary bodies constrained inside the screen. Do this in any way you see fit. These are some examples of approaches which could keep the bodies inside the screen:

- Reflect the velocity across the edge, bouncing the body off the edge
- Set the velocity to 0 when a body crosses the edge
- Place the body at some random position inside the screen if it leaves the screen


## 3 Increasing numbers

Next, we will slowly increase the number of planetary bodies. Every 2 seconds, add a new planetary body at a position with a velocity. I suggest making these random, to keep things interesting. Increase the number of planetary bodies up to a maximum of 30 total planetary bodies.


## 4 Varying mass

To add some variety, we will now vary how much mass every planetary body will have. When creating a new body, pick a random mass inside some range. The radii of a planetary body will be some function of its mass, proportional to sqrt(mass) or cube_root(mass). This mass will affect how gravity pulls between all of the planetary bodies.


## 5 Collision

This step will introduce an additional interaction between the planetary bodies. Whenever any two of our planetary bodies intersect with each other, we will merge them into one planetary body. This will involve comparing the distance between two bodies with the sum of their radii, to detect a collision. The merged planetary body will have a mass which is equal to the sum of the colliding bodies' masses, and the same momentum as both colliding masses.


## 6 Unique Color

Similar to [varying mass](#4-varying-mass), this will add a unique Color to every planetary body. They should draw with this color, and when merging, their colors should be combined or averaged in some way.


## 7 Manually placing planet [Extra Credit]

Add a user interaction which allows you to place a new planet of some varied size, and a specified velocity. There are many ways to do this. One possible way is to have the mass set by how long the mouse is held down. And the velocity set by the distance the mouse has dragged while being held down.