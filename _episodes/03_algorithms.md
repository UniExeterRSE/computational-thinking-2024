---
layout: page
title: Algorithms
order: 3
session: 1
length: 20
toc: true
---


Real computational tasks can be complicated. To accomplish them you need to **THINK BEFORE YOU CODE**.

## Activity
In small groups discuss what you think the most important elements to think about before writing a program are: 
 * question to prompt


## What is an algorithm? What is a program?

An algorithm is a sequence of steps that solve a specific problem. A program is a sequence of instructions that tells the computer to do something. They differ from each other in that an algorithm will solve the problem while a program implements an algorithm in a form that a computer can execute.

Although we might think of algorithms as complicated things used by programmers, in fact algorithms are essentially used by people everyday to complete tasks. They range from incredibly simple to incredibly complex. 

For example:

* The method of a carbonara recipe is an algorithm designed to assemble certain elements into a meal. 
* Directions are an algorithm designed to navigate a person from A to B.

## Faulty design vs faulty implementation 

Being an efficient programmer is not only about writing code - it is about solving problems in a way that is translatable to a computer. It means using your knowledge of how a computer or language works, to use relevant constructs as the basis of your solution. Often what people think of as a problem with code writing is in fact a problem with the algorithm. 

In both of the examples above (recipes and directions) we can think of instances where they go wrong. We can use these to demonstrate the distinction between errors in the algorithm compared to errors in how it is transcribed into instructions.

Let's start with the case of directions, let's say you've arrive in London at Paddington train station and you need to get to Edgware. A friend has helpfully written down the route by the Underground.  Your algorithm is as follows:

1. Get on the Hammersmith & City, Circle or District line. 
2. Ride one stop.

You follow these instructions and when you get off the tube, the sign at the Station says Edgware Road. That's not the right destination. 

You call your friend. Their response is "Oh I thought you wanted to get to Edgware ROAD not Edgware". This isn't a problem with the instructions (i.e. the code) the problem is the algorithm had the wrong destination in mind when designing it. The instructions to get to the incorrect destination were correct and you followed them as planned. 

Clear, on your required final destination, your friend now gives you some new directions. You write them down and follow them. 

1. Get on Hammersmith & City or Circle line
2. Ride four stops to Kings Cross
3. Change to Northbound Northern Line
4. Ride to end of line.

Again you get out at your final destination, where the sign says High Barnet. The wrong location again! You call your friend, she runs through the instructions with you again and you compare to your written notes. This time you incorrectly wrote the instructions down. In this instance the problem was a coding error, the algorithm was fine, but you had an error in the set of instructions you used to navigate. 

Typically coding errors are easier to detect and fix, than problems with the underlying algorithm. To pick these up you need to manually work through the algorithm and compare what the code is actually doing compared to what you thought it should be doing. 

Consider the exercise below:

🏃‍♀️ **Activity: Addition** 

Create a program that asks a user for x and y values and then returns the sum of them.

```
x=input('X = ')
y=input('Y = ')
print(x+y)
```

Hmm... did we tell it what to do incorrectly? Or did we tell it to do the wrong thing?
Try adding 'computational' and 'thinking'. What is the difference between these types of input? Clue: type()

```
print('computational'+'thinking')
```

Often what we think are issues with implementation are actually issues of algorithm.


## Understanding algorithms

A simple way to represent an algorithm can be through a flowchart. Looking at the representation of a car park below, by following the steps of the flowchart you should be able to find out how many cars are at the exit, entrance and inside at the end.

![car_park](../images/carpark.png)


## Creating algorithms

🏃‍♀️ **Activity: Snakes, ladders & flowcharts**

Snakes and ladders is dice game where players advance along the board based on the roll of the dice. Upon landing on a board square a player may either encounter a snake, where they are forced backwards a number of squares, a ladder, where they advance a number of squares, or nothing, in which case they remain on that square. A player wins when they reach the end of the board.

Design a flowchart for the game. The total number of board squares should be 100, and the maximum number of squares a player is advanced or returned should be 30.

If you want to create the flowchart online you can use [this website](https://draw.io/) (used to create the above flowchart)

-----

When designing an algorithm there are certain elements that make algorithmic problem-solving more efficient:
* decomposition
* pattern recognition
* abstraction

-----




