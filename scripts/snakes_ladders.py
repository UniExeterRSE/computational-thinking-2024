import random
nPlayers = 4
endSquare = 100
snakes = { 14:3, 28:7, 34:12, 68:42, 85:23, 96:67 }
ladders = { 5:16 , 22:56 , 38:66 ,51:76 ,64:91 ,72:84 }

# create vector of current positions
P = [1]*4

# specify starting player
i = 0

while max(P) < endSquare:

    D = random.randint(1,6)
    print(D)
    P[i] = P[i]+D
    if P[i] in snakes:
        P[i] = snakes[P[i]]
        print("Player " + str(i + 1)  + " goes down a snake.") 
    elif P[i] in ladders:
        P[i] = ladders[P[i]]
        print("Player " + str(i + 1)  + " goes up a ladder.") 
    
    print("Player " + str(i + 1)  + " is at square " + str(P[i])) 
 
    if i == (nPlayers - 1):
        i = 0
    else:
        i+=1
