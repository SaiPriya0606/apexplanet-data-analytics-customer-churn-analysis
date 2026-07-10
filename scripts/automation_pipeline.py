import pandas as pd
from sqlalchemy import create_engine
import joblib

print("Starting Analytics Pipeline...")

# Load data
df = pd.read_csv("data/processed/telco_cleaned.csv")
# Basic KPIs
print("Total Customers:", len(df))
print("Average Monthly Charges:", df["monthlycharges"].mean())
print("Churn Rate:", (df["churn"] == "Yes").mean() * 100)

# Export summary
summary = pd.DataFrame({
    "Metric": [
        "Total Customers",
        "Average Monthly Charges",
        "Churn Rate"
    ],
    "Value": [
        len(df),
        round(df["monthlycharges"].mean(), 2),
        round((df["churn"] == "Yes").mean() * 100, 2)
    ]
})

summary.to_csv("results/kpi_summary.csv", index=False)
print("Pipeline Completed Successfully.")