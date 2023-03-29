---
layout: page
title: Aligning the human solution with the computer
order: 7
session: 2
length: 35
toc: true
---

In the two sessions so far we have covered the four pillars of computational thinking:

* algorithms
* decomposition
* pattern recognition
* abstraction

This approaches have allowed us to develop a solution to our problem. Critically at this stage it likely the solution still looks like a human solution. In this this lesson we are going to think about how we translate this solution into something we can write code for. To do this we need to align this human solution to concepts, constructs or paradigms for our language of choice. Whilst computational thinking is agnostic of programming language, this translation element will vary depending on the specific language. There are however some common themes we can identify.

If you have the knowledge of a couple of different languages, with your solution in hand you are now in a position to evaluate which of those might be optimal. Computational thinking and separating the design of teh solution from the actual coding, does have benefits for even more experienced practitioners.

The foundation blocks of most programming languages are objects and functions. Objects are the basis of variables you define or declare. Functions are processes or actions you perform (often to objects but not always). When we talk about aligning our human solution to one a computer understands, we need to reframe it in terms of variables and functions (or the processes underlying those functions).

The most relevant approach here is abstraction. We need to identify which information our programme needs to know in order progress through the workflow.

Let's return to our snake and ladders example. Here is a flowchart of the human solution. 

![](../images/snakes-human.png)

Th crux of the game is the movement around the board. At any point in time the computer needs to know where each player is located. Using abstraction, the critical piece of information is then the number of the square that the player is on at that time in the game. We need a variable to store this for each player. We could have a series of variables ("P1", "P2", "P3", ...) but snakes and ladders doe not have a fixed number of players. It could be between 2 and 4. So it could be that some of these variables become redundant or we don't declare enough of them. 

This highlights that another critical piece of information for our programme is the number of players. With this information we can create a list or vector or array of the required length to hold the positions of all players. We will call this `P`. 

To start the game, all players move to the first square, so all elements of `P` need to be initialized to 1. 

The players will take it in turns to complete their go. In order for this rotation to occur the programme needs to know which player is currently taking a turn. We can organise `P` such that the elements are ordered by the order of turns. This makes it easy to keep track. We will need a variable though to denote which player is currently playing, we will call this i. We can easily move to the next player by increasing the value of i by 1, unless i is the maximum number of players in which case it returns to 1.  

We then start rolling the dice. To know where the current player is going to move to, we need to know the value of the dice roll, so this becomes another variable. We will call this D. We only need one element here as the players only roll the dice one at a time. Once the dice has been rolled we add this value to the current position of the current player. We can use i to extract the current position (by slicing or subsetting) and then replace it with the new position.

Before this player's go is over, we need to check whether they have landed on either a snake or a ladder to determine if they need to move again. We are using this information to make a decision, we need to introduce two pathways in our programme based on a criteria. This can only be achieved with an IF statement. To use an `IF` statement we need a condition we can evaluate to be either TRUE or FALSE. Furthermore, there are multiple possible squares with either snakes or ladders we want to check we have not landed on. We need a reference list of squares with snakes heads or bottoms of ladders to check. What's more if we are on either a snake or ladder we will then need to know which square we are sent back to or advanced. In Python we could use a dictionary where the key is the head of the snake and the value the tail, in R we would probably use a data.frame. If True, we then replace the current position with the end of the snake of ladder (the value we looked up in the dictionary). 

This is a completed go and play now passes through to the next player. So we have already discussed how our variable i is used to track the progress of the game. But how do we get our programme to rerun the same process for each play. Our flowchart clearly shows the repetition element of the game, and as we are iterating through players we might thing that we need a for loop. However, a for loop will only rotate through each player once. It is unlikely the game will be finished after one turn. If we knew how many turns would be needed we could do a nested for loop to loop through the players a set number of times or a single to process a set number of turns, but we don't know what the total number of gos or turns will be. We could set it to loop a conservative number of times, such that teh game is guaranteed to finish before that expires but firstly, this wouldn't scale (if we were to increase the number of squares) and second, we would need to add into our loop an IF statement to check if the end criteria has been met so it could break out of the loop and stop executing. 

For loops are great for repetitive processes that occur a fixed number of times. If instead we have a repetitive process we keep repeating until a condition is met we instead need a `while` loop. This will automatically stop once teh criteria is met. In this case the game finishes if the current player lands on square 100, so `P[i] == 100`, the game continues if the current player has not yet got to the final square so `P[i] < 100`.


![](../images/snakes-programme.png)


### Activity: Caesar cypher 

In cryptography, a Caesar cipher is a very simple encryption technique in which each letter in the plain text is replaced by a letter some fixed number of positions down the alphabet. For example, with a shift of 3, A would be replaced by D, B would become E, and so on. The method is named after Julius Caesar, who used it to communicate with his generals. ROT-13 ("rotate by 13 places") is a widely used example of a Caesar cipher where the shift is 13. 



Your task in this exercise is to implement an encoder/decoder of ROT-13. 

In Python, the key for ROT-13 may be represented by means of the following dictionary:

```
key = {'a':'n', 'b':'o', 'c':'p', 'd':'q', 'e':'r', 'f':'s', 'g':'t', 'h':'u', 
       'i':'v', 'j':'w', 'k':'x', 'l':'y', 'm':'z', 'n':'a', 'o':'b', 'p':'c', 
       'q':'d', 'r':'e', 's':'f', 't':'g', 'u':'h', 'v':'i', 'w':'j', 'x':'k',
       'y':'l', 'z':'m', 'A':'N', 'B':'O', 'C':'P', 'D':'Q', 'E':'R', 'F':'S', 
       'G':'T', 'H':'U', 'I':'V', 'J':'W', 'K':'X', 'L':'Y', 'M':'Z', 'N':'A', 
       'O':'B', 'P':'C', 'Q':'D', 'R':'E', 'S':'F', 'T':'G', 'U':'H', 'V':'I', 
       'W':'J', 'X':'K', 'Y':'L', 'Z':'M'}
```

In R, this dictionary is equivalent to the dataframe:

```
key <- data.frame(start = letters, 
                  shift = c(letters[14:26],
                            letters[1:13]))
```

### Iteration

Once you have recognised a pattern, this means you only need to write the code for this action once. You may either be able to reuse a previously written function to help solve a different problem, or it may be that you can iterate the same solution.... 