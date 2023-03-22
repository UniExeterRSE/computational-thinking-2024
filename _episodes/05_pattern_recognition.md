---
layout: page
title: Pattern Recognition
order: 
session: 1
length: 20
toc: true
---

## 3. Pattern recognition

Pattern recognition involves finding the similarities or patterns among small, decomposed problems that can help us solve complex problems more efficiently. Once a problem has been broken down into simpler subproblems, there may be similarities among these that mean we do not have a write a solution twice. These patterns may exist both between and within individual problems.

🏃‍♀️ **Activity: The swap puzzle** 

Place small coins heads up on the squares marked H and tails up on the squares marked T.
Swap the positions of the Heads for the Tails in as few moves as possible.

There are two ways to move a piece:
1. Move left or right to an adjacent empty square
2. Jump over a single adjacent piece into an empty space.

There are three increasingly larger boards that get harder. Complete the first in 3 moves, the second in 8 moves
and the third in 15 moves.

![coin](../images/coin.png)


🏃‍♀️ **Activity: Lost in translation** 

Here's a simple real-world application from the field of bioinformatics. Genetic information is stored in DNA, which is a sequence of 4 bases (the nucleotides, conventionally indicated by the uppercase letters A, C, T, G). Thus a part of a gene might look like the string "GATTACA". During translation, molecular machinery converts the genetic sequence to a string of amino acids constituting a protein. In particular, DNA is read as a sequence of three-letter long "words" (the codons), each of which identifies an amino acid. So a sequence like "ATACAACCTGGTTCA" would be segmented as "(ATA)(CAA)(CCT)(GGT)(TCA)" and translated to "IQPGS", according to the standard genetic code (see also the dictionary below). In reality, these sequences are a few thousand characters long, hence the need for bioinformatics. Happily, if we discard all the chemistry, this is just straightforward string processing.

Write a program that asks the user for a nucleotide sequence and translates it into aminoacids. Use the genetic code table given below as a dictionary to look up the codons and perform the translation.

```
# The standard genetic code
gencode = {
    'ATA':'I', 'ATC':'I', 'ATT':'I', 'ATG':'M',
    'ACA':'T', 'ACC':'T', 'ACG':'T', 'ACT':'T',
    'AAC':'N', 'AAT':'N', 'AAA':'K', 'AAG':'K',
    'AGC':'S', 'AGT':'S', 'AGA':'R', 'AGG':'R',
    'CTA':'L', 'CTC':'L', 'CTG':'L', 'CTT':'L',
    'CCA':'P', 'CCC':'P', 'CCG':'P', 'CCT':'P',
    'CAC':'H', 'CAT':'H', 'CAA':'Q', 'CAG':'Q',
    'CGA':'R', 'CGC':'R', 'CGG':'R', 'CGT':'R',
    'GTA':'V', 'GTC':'V', 'GTG':'V', 'GTT':'V',
    'GCA':'A', 'GCC':'A', 'GCG':'A', 'GCT':'A',
    'GAC':'D', 'GAT':'D', 'GAA':'E', 'GAG':'E',
    'GGA':'G', 'GGC':'G', 'GGG':'G', 'GGT':'G',
    'TCA':'S', 'TCC':'S', 'TCG':'S', 'TCT':'S',
    'TTC':'F', 'TTT':'F', 'TTA':'L', 'TTG':'L',
    'TAC':'Y', 'TAT':'Y', 'TAA':'_', 'TAG':'_',
    'TGC':'C', 'TGT':'C', 'TGA':'_', 'TGG':'W'}
```

How can you use the ideas of decomposition and pattern recognition to help you to write this? Is this similar to anything you have written before?

Credits: [Fabrizio Smeraldi](https://github.com/fsmeraldi/cp-flowcontrol/blob/master/Flow_Control-Exercises.ipynb)

### 3.1 Iteration

Once you have recognised a pattern, you may either be able to reuse a previously written function to help solve a different problem, or it may be that you can iterate the same solution.... 

-----
