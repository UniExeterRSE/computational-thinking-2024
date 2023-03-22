---
layout: page
title: Abstraction
order: 3
session: 2
length: 20
toc: true
---

## Abstraction

Programming is about creating and composing abstractions. Abstraction works by establishing a level of complexity at which a person interacts with a system, suppressing the more complex details below the current level. Abstraction allows programmers to define objects and functions that can interact with each other in a predictable way without having to understand the underlying details of their implementation. 

If you see a simple interface covering a more complex implementation, this is abstraction. For example:
* The interface of a car is simple; a steering wheel, accelerator, brake and gear stick. However, these cover a much more complex machine. You learn that to press the accelerator makes the car go faster but will not be taught how the acceleration actually works - because the details of this are not important for you to drive the car.

Abstraction can also be used to simplify problems. By ignoring information that is not essential to the way your program works, it is easier to write a solution. 

🏃‍♀️ **Activity: Tour Guide**

Imagine that you are a hotel tour guide. Tourists staying in your hotel expect to be taken on a tour visiting all the city’s attractions. Using the below map showing locations of all the attractions and how you can get from one to another, you must work out a route that starts from the hotel and takes your tour group to every tourist site. The tourists will be unhappy if they pass through the same place twice. They also want to end up back at their hotel that evening. How would you solve this?

![tourguide](../images/tour_guide.png)

🏃‍♀️ **Activity: Knight's Tour**

On the cross shaped board below, a chess Knight can move two spaces in one direction and then move one square at right angles, or vice versa, as it moves in a chessgame. It jumps to the new square without visiting any in between, and must always land on a square on the board. Find a sequence of moves that starts from Square 1, visits every square exactly once and finishes where it started.

![knightstour](../images/knights_tour.png)

Are these problems similar? How might you represent the Knight's Tour in a different way to simplify finding a solution?

