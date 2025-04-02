# Generate employee salaries
salaries <- c(rnorm(95, mean=50000, sd=5000), 120000, 130000, 140000, 150000, 160000)

# Compute Interquartile Range (IQR)
Q1 <- quantile(salaries, 0.25)
Q3 <- quantile(salaries, 0.75)
IQR_value <- Q3 - Q1

# Define outlier boundaries
lower_bound <- Q1 - 1.5 * IQR_value
upper_bound <- Q3 + 1.5 * IQR_value

# Identify outliers
outliers <- salaries[salaries < lower_bound | salaries > upper_bound]

# Display results
cat("Outliers:", outliers, "\n")

library(ggplot2)
# Create dataframe
df <- data.frame(Salaries = salaries)

# Boxplot
ggplot(df, aes(y=Salaries)) +
  geom_boxplot(fill="blue", alpha=0.6, outlier.color="red", outlier.size=3) +
  ggtitle("Salary Distribution with Outliers") +
  ylab("Salary ($)") +
  theme_minimal()


