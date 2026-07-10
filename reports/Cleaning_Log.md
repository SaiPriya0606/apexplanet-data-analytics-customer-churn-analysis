# Cleaning Log

## Dataset
IBM Telco Customer Churn Dataset

## Data Cleaning Steps

1. Loaded dataset into Pandas DataFrame.
2. Converted TotalCharges to numeric format.
3. Replaced invalid values with NaN.
4. Filled missing values using the median.
5. Checked and removed duplicate records.
6. Converted categorical columns to category datatype.
7. Standardized all column names to lowercase.
8. Detected outliers using the IQR method.
9. Saved the cleaned dataset to data/processed/telco_cleaned.csv.