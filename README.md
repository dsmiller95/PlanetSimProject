# Processing Planet sim project

This is a project setup which is meant to demonstrate the benefits of object-oriented programming, by laying out a path of feature changes to a starter template which will guide you into object oriented programming.

First get set up with processing and open the starter template. Then, work through the refactoring tasks in series to make the system more extensible.

These tasks will become harder, and at some point you will need to change how the code is structured in order to manage the growing complexity. It is up to you to decide when you want to make these changes, based on the immediate cost of the changes and the potential future savings of making the change.


- [Getting started](#getting-started)
  - [Starter template](#starter-template)
- [Tasks](#tasks)
  - [1 More planetary bodies](#1-more-planetary-bodies)
  - [2 Edge interaction](#2-edge-interaction)
  - [3 Increasing numbers](#3-increasing-numbers)
  - [4 Planetary Inflation](#4-planetary-inflation)
  - [5 Collision](#5-collision)
  - [6 Getting Colorful](#6-getting-colorful)
  - [7 Hands On [Extra Credit]](#7-hands-on-extra-credit)
  - [8 Simulation speed [Extra Credit]](#8-simulation-speed-extra-credit)
- [Reference resources](#reference-resources)
  - [Array and ArrayList](#array-and-arraylist)
  - [Class](#class)
  - [HashMap](#hashmap)

# Getting started

This project uses Processing. [Download processing from the processing website](https://processing.org/download).

Download the code for the repository using your preferred method, either downloading as a zip package, or clone via git:
```
git clone https://github.com/dsmiller95/PlanetSimProject.git
```

If you clone via git, I recommend committing your changes after completing each step. This will make it possible to look back through your change history. Which you may find useful if you notice suddenly the project no longer works, and you don't know what change caused it!

Open the planet_sim_template_starter.pde file to get started.

## Starter template

The starter template will contain a simple 2d simulation of two bodies, acting on each other using a pseudo-gravitational force. This code is written in a way that would be pretty awkward to expand to 3, 8, or N bodies. However, this code should contain all the system calls we need to actually render the most basic form of this simulation.

This is what you should see on successfully running the starter template:


![Planet template animation](./resources/PlanetTemplateStart.gif)

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


## 4 Planetary Inflation

To add some variety, we will now vary how much mass every planetary body will have. When creating a new body, pick a random mass inside some range. The radii of a planetary body will be some function of its mass, proportional to sqrt(mass) or cube_root(mass). This mass will affect how gravity pulls between all of the planetary bodies.


## 5 Collision

This step will introduce an additional interaction between the planetary bodies. Whenever any two of our planetary bodies intersect with each other, we will merge them into one planetary body. This will involve comparing the distance between two bodies with the sum of their radii, to detect a collision. The merged planetary body will have a mass which is equal to the sum of the colliding bodies' masses, and the same momentum as both colliding masses.


## 6 Getting Colorful

Similar to [varying mass](#4-varying-mass), this will add a unique Color to every planetary body. They should draw with this color, and when merging, their colors should be combined or averaged in some way.


## 7 Hands On [Extra Credit]

Add a user interaction which allows you to place a new planet of some varied size, and a specified velocity. There are many ways to do this. One possible way is to have the mass set by how long the mouse is held down. And the velocity set by the distance the mouse has dragged while being held down.

## 8 Simulation speed [Extra Credit]

Add a variable to the processing project which will change the speed of the simulation. There are several ways to implement this, following are a couple options:

- multiply all velocities by a specific scalar
- run the velocity, force, accelerate, calculations more than once every frame


# Reference resources

These are references that could be useful to you as you look for ways to make the above changes easier, and how to shape the code to make them more doable. This is not a complete list, it is meant as a jumping off point.

## Array and ArrayList

These can be used to store data in a sequential format. Array is of fixed size, ArrayList is allowed to vary in size.

Array will require a size to be provided on startup, and will remain that size for its lifetime. To get a larger array, a new array must be created. Arrays are easy to iterate over. [See Array reference on processing.org](https://processing.org/reference/Array.html)

ArrayList will not require a size on startup, and will expose methods like `.add(item)`, `.remove(item)`, `.remove(int index)`, or `insert(int index, item)` . ArrayLists are easy to iterate over. [See ArrayList reference on processing.org](https://processing.org/reference/ArrayList.html)

## Class

A Class is the most base way to represent a set of related data and functions in java. Classes are very useful when you have some data which you always refer to together, and often also have functions which operate on this data. Putting data and functions together into a class can make the functionality much easier to reason about, and write code around, without worrying about the underlying implementation.

For example, one might use a Class to represent a Triangle. The class would store the coordinates for the three vertexes of the triangle, and a `draw()` function on the class would allow external code to cause the triangle to be drawn to the screen based on its coordinates.

See [class reference on processing.org](https://processing.org/reference/class.html)

## HashMap

A HashMap (similar to the Dictionary in some other languages) stores a set of values, indexed by strings. This is useful if you want to store a mapping of objects in no particular order, with relatively performant lookup based on a specified arbitrary key.

See [HashMap reference on processing.org](https://processing.org/reference/HashMap.html)