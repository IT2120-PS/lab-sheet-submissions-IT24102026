# Question 1(i)
# Generate 25 random baking times from normal distribution with mean=45, sd=2
baking_time <- rnorm(25, mean = 45, sd = 2)
baking_time

# Question 1(ii)
# One-sample t-test: H0: mu = 46 vs H1: mu < 46 at 5% significance level
test_result <- t.test(baking_time, mu = 46, alternative = "less")
test_result