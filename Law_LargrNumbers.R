# Function to simulate the experiment and calculate the proportion of numbers falling between -1 and 1
simulate_experiment <- function(N) {
  # Generate N random normally distributed numbers
  numbers <- rnorm(N, mean = 0, sd = 1)
  
  # Count how many numbers fall between -1 and 1
  count <- sum(numbers > -1 & numbers < 1)
  
  # Calculate the proportion
  proportion <- count / N
  
  return(proportion)
}

# Set the number of iterations
iterations <- 1000

# Initialize a vector to store results
results <- numeric(iterations)

# Perform the experiment for different values of N
for (i in 1:iterations) {
  results[i] <- simulate_experiment(i)
}

# Plotting the results
plot(1:iterations, results, type = "l", xlab = "Number of Samples (N)", ylab = "Proportion of Numbers between -1 and 1", 
     main = "Law of Large Numbers Simulation", col = "blue", ylim = c(0, 1))

# Adding a horizontal line at 68.2% (expected value)
abline(h = 0.682, col = "red", lty = 2)

# Adding a legend
legend("topright", legend = c("Proportion", "Expected Value (68.2%)"), col = c("blue", "red"), lty = c(1, 2), bty = "n")

