# 📊 Outlier Detection

This post is part of my **Beyond the Numbers** series, where I explore foundational statistical concepts using clean R code, real-world context, and insightful visualizations.

## 🎯 Focus Topic: Detecting Outliers in Employee Salary Data

Outliers can distort your analysis, but they can also reveal powerful stories — from payroll anomalies to data entry errors and even signs of fraud.

---

## 🧪 Dataset Used
A synthetic dataset with:
- 95 employee salaries ranging using rnorm(95, mean=50000, sd=5000)  
- 5 clear outlier salaries: \$120,000, \$130,000, \$140,000, \$150,000, \$160,000

Generated using:

```r
# Simulated employee salaries without randomness
salaries <- c(rnorm(95, mean=50000, sd=5000), 120000, 130000, 140000, 150000, 160000)
