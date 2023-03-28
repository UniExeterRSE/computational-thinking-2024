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