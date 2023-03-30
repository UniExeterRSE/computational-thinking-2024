# Solve a sudoku puzzle

sudoku <- matrix(
  data = c(0,0,0,0,0,6,0,0,0,
           0,9,5,7,0,0,3,0,0,
           4,0,0,0,9,2,0,0,5,
           7,6,4,0,0,0,0,0,3,
           0,0,0,0,0,0,0,0,0,
           2,0,0,0,0,0,9,7,1,
           5,0,0,2,1,0,0,0,9,
           0,0,7,0,0,5,4,8,0,
           0,0,0,8,0,0,0,0,0),
  byrow = T,
  ncol = 9
)


solve_sudoku <- function(bo) {
  # Find the first empty cell
  empties <- find_empty(bo)
  if(is.null(empties)) {
    # If none, then the board has been solved
    print_sudoku(bo)
    return(T)
  } else {
    # Collect the empty cell
    rowi <- empties[1]
    colj <- empties[2]
  }
  
  # Attempt to solve recursively
  for(i in 1:9) {
    # Test for valid answers
    if(valid_sudoku(bo, i, rowi, colj)) {
      # If it works, incorporate
      bo[rowi, colj] <- i
      # Retest
      if(solve_sudoku(bo)) {
        # Until nothing left to solve
        return(T)
      } else {
        # Otherwise that position does not work, reinitialize
        bo[rowi, colj] <- 0
      }
    }
  }
  
  # If there exist no valid conformations
  return(F)
}

find_empty <- function(bo) {
  # Return first empty cell
  for(i in 1:nrow(bo)) {
    for(j in 1:ncol(bo)) {
      if(bo[i, j] == 0) {
        return(c(i, j))
      }
    }
  }
  
  # If no empty cells
  return(NULL)
}

# Check that a given number fits in a position
valid_sudoku <- function(bo, num, row_i, col_j) {
  # Check for only one matching entry in the row
  if(any(bo[row_i, ] == num)) {
    return(F)
  }
  
  # Check for only one matching entry in the column
  if(any(bo[, col_j] == num)) {
    return(F)
  }
  
  # Check the box
  # Find the coordinates of the box
  box_x <- floor((row_i - 1) / 3) + 1
  box_y <- floor((col_j - 1) / 3) + 1
  
  # Select only those cells belonging to that box
  box <- bo[(3*box_x-2):(3*box_x), (3*box_y-2):(3*box_y)]
  
  # Check for only one matching entry in the box
  if(any(box == num)) {
    return(F)
  }
  
  return(T)
}