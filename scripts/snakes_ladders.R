nPlayers <- 4
endSquare <- 100
snakes<-data.frame("Top" = c(14,28,34,68,85,96), "Bottom" = c(3,7,12,42,23,67))
ladders<-data.frame("Bottom" = c(5,22,38,51,64,72), "Top" = c(16,56,66,76,91,84))

# create vector of current positions
P<-rep(1, nPlayers)

# specify starting player
i<-1

while(max(P) < endSquare){

    D <- sample(c(1:6),1)
    P[i]<-P[i]+D
    if( P[i] %in% snakes$Top){
        P[i]<-snakes$Bottom[snakes$Top== P[i]]
    } else if (P[i] %in% ladders$Bottom) {
        P[i]<-ladders$Top[ladders$Bottom == P[i]]
    }

    print(paste("Player", i, "is at square", P[i])) 
 
   if(i == nPlayers){
        i <- 1
    } else {
        i <- i+1
    }
}