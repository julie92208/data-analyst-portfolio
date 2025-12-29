📊 Global Healthcare Workforce Analysis

Tableau Dashboard · Python Data Cleaning · WHO Dataset

📌 Project Overview

This project analyzes global healthcare workforce distribution by examining the balance between doctors and nurses across 194 countries from 2010 to 2023, using real-world data from the WHO Global Health Observatory (GHO).

The analysis focuses on identifying regional disparities, long-term trends, and country-level imbalances using the nurse-to-doctor ratio as a key indicator.
Python was used for data cleaning and feature engineering, and insights were visualized through an interactive Tableau dashboard.

🔗 Live Tableau Dashboard
👉 https://public.tableau.com/views/InsightFinal/GlobalHealthcareWorkforceAnalysis

🧠 Business & Analytical Questions

How has the nurse-to-doctor ratio evolved globally over time?

Which regions show the greatest workforce imbalance?

Which countries have the highest and lowest nurse-to-doctor ratios?

How has Canada’s healthcare workforce changed between 2018–2023?

Is there a correlation between the number of doctors and nurses globally?

📂 Data Source

Source: WHO Global Health Observatory (GHO)

Theme: National Health Workforce Accounts (NHWA)

Link: https://www.who.int/data/gho/data/themes/topics/health-workforce

Raw Files

data-doctor.csv – Medical doctors per 10,000 population

data-nurse.csv – Nursing and midwifery personnel per 10,000 population

Both datasets share the same structure and were merged during preprocessing.

🛠️ Tools & Technologies

Python (Pandas, Jupyter Notebook) – data cleaning & analysis

Tableau – interactive dashboard & visualization

GitHub Pages – portfolio hosting

Excel / CSV – raw data format

🔧 Data Preparation (Python)

Key steps in data preprocessing included:

Filtering relevant columns

Renaming variables for clarity

Merging doctor and nurse datasets

Creating a derived metric: Nurse-to-Doctor Ratio

Handling missing values and validating time ranges

Example: Data Cleaning & Feature Engineering
import pandas as pd

doctor = pd.read_csv("data-doctor.csv")
nurse = pd.read_csv("data-nurse.csv")

cols = ["Location", "ParentLocation", "Period", "Value"]
doctor = doctor[cols].rename(columns={"Value": "Doctors_per_10k"})
nurse = nurse[cols].rename(columns={"Value": "Nurses_per_10k"})

merged = pd.merge(
    doctor, nurse,
    on=["Location", "ParentLocation", "Period"],
    how="inner"
)

merged["Nurse_to_Doctor_Ratio"] = (
    merged["Nurses_per_10k"] / merged["Doctors_per_10k"]
)

📈 Key Insights

Regional Disparity: Africa has the highest average nurse-to-doctor ratio globally.

Divergent Trends: Some regions show widening workforce imbalance over time.

Top 5 Countries: Countries with the highest ratios are concentrated in Africa and the Eastern Mediterranean region.

Canada (2018–2023): Nurse growth significantly outpaced doctor growth.

Correlation (2023): Strong positive correlation between doctors and nurses across countries.

📊 Dashboard Features

The Tableau dashboard includes:

Top & Bottom 5 countries by nurse-to-doctor ratio

Regional average comparison

Time-series trends (2010–2023)

Canada-focused workforce analysis

Correlation analysis (Doctors vs Nurses per 10,000 population)

📸 Dashboard Preview


📄 Project Deliverables

📊 Interactive Tableau Dashboard

🧹 Python Data Cleaning & Analysis Code

📄 Final Analytical Report

📽 Presentation Slides

Download Files

📄 Final Report: S25_INFO8677_sec2_Group1_Final Report.docx

📽 Presentation: S25_INFO8677_sec2_Group1_Group Project.pptx

👩‍💻 My Role & Contributions

Julie Jang

Retrieved and cleaned WHO datasets using Python

Designed data model and derived key metrics

Conducted exploratory data analysis

Developed Tableau dashboard visuals

Generated analytical insights and recommendations

Contributed to final report and presentation

🎯 Recommendations

Invest in doctor training and retention in high-ratio regions

Use data-driven workforce planning at the national level

Expand and empower advanced nursing roles

Encourage global collaboration and standardized data reporting
