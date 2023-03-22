---
layout: page
title: Decomposition
order: 4
session: 1
length: 20
toc: true
---

## 2. Decomposition

Decomposition refers to the process of breaking down a complex problem into smaller, simpler subproblems. The idea is to solve each subproblem independently 
and then combine the solutions to obtain a solution to the original problem. This allows for the creation of more efficient and manageable algorithms by 
reducing the complexity of the problem and making it easier to identify and solve individual parts. Equally, this makes your code more reusable as each function 
solves a smaller issue which may be relevant elsewhere. 


🏃‍♀️ **Activity: Caesar cypher** 

In cryptography, a Caesar cipher is a very simple encryption technique in which each letter in the plain text is replaced by a letter some fixed number of positions down the alphabet. For example, with a shift of 3, A would be replaced by D, B would become E, and so on. The method is named after Julius Caesar, who used it to communicate with his generals. ROT-13 ("rotate by 13 places") is a widely used example of a Caesar cipher where the shift is 13. In Python, the key for ROT-13 may be represented by means of the following dictionary:

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


Your task in this exercise is to implement an encoder/decoder of ROT-13. Once you're done, you will be able to read the following message:

```
Pnrfne pvcure? V zhpu cersre Pnrfne fnynq!
```

How does the idea of decomposition apply here? What would you do to implement this?

Credits: [Torbjorn Lager](https://www.gu.se/en/about/find-staff/torbjornlager)

Note: Because there are 26 letters (2×13) in the basic Latin alphabet, ROT13 is its own inverse; that is, to undo ROT13, the same algorithm is applied, so the same action can be used for encoding and decoding.

-----
