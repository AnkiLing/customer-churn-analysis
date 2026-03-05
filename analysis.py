import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Load dataset
df = pd.read_csv("WA_Fn-UseC_-Telco-Customer-Churn.csv")

# Convert TotalCharges to numeric
df["TotalCharges"] = pd.to_numeric(df["TotalCharges"], errors="coerce")

# Remove missing values
df = df.dropna()

# Overall churn rate
churn_rate = df["Churn"].value_counts(normalize=True) * 100
print("Churn Rate:")
print(churn_rate)

# Churn by contract type
contract_churn = pd.crosstab(df["Contract"], df["Churn"], normalize="index") * 100
print(contract_churn)

# Plot churn by contract
contract_churn.plot(kind="bar", stacked=True)
plt.title("Churn Rate by Contract Type")
plt.ylabel("Percentage")
plt.show()

# Monthly charges vs churn
sns.boxplot(x="Churn", y="MonthlyCharges", data=df)
plt.title("Monthly Charges by Churn Status")
plt.show()

# Tenure distribution
sns.histplot(df["tenure"], bins=30)
plt.title("Customer Tenure Distribution")
plt.show()
