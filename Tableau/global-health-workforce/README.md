# Global Healthcare Workforce Analysis

Tableau Dashboard · Python Data Cleaning · WHO Dataset

---

## Project Overview

This project analyzes global healthcare workforce distribution by examining the balance between doctors and nurses across 194 countries from 2010 to 2023, using real-world data from the World Health Organization (WHO) Global Health Observatory.

The analysis focuses on identifying regional disparities, long-term trends, and country-level imbalances using the nurse-to-doctor ratio as a key indicator. Python was used for data cleaning and feature engineering, and insights were visualized through an interactive Tableau dashboard.

Live Dashboard:  
https://public.tableau.com/views/InsightFinal/GlobalHealthcareWorkforceAnalysis

---

## Business Questions

- How has the nurse-to-doctor ratio evolved globally over time?
- Which regions show the greatest healthcare workforce imbalance?
- Which countries have the highest and lowest nurse-to-doctor ratios?
- How has Canada’s healthcare workforce changed between 2018 and 2023?
- Is there a correlation between the number of doctors and nurses globally?

---

## Data Source

Source: WHO Global Health Observatory (GHO)  
Theme: National Health Workforce Accounts (NHWA)  
Link: https://www.who.int/data/gho/data/themes/topics/health-workforce

Raw files:
- data-doctor.csv – Medical doctors per 10,000 population
- data-nurse.csv – Nursing and midwifery personnel per 10,000 population

---

## Tools and Technologies

- Python (Pandas, Jupyter Notebook)
- Tableau
- GitHub Pages
- CSV / Excel

---

## Data Preparation (Python)

Key preprocessing steps included:
- Filtering relevant attributes
- Renaming variables for clarity
- Merging doctor and nurse datasets
- Creating a derived metric: Nurse-to-Doctor Ratio
- Handling missing values and validating time ranges

### Example: Data Cleaning and Feature Engineering

```python
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
```

---

## Key Insights

- Africa has the highest average nurse-to-doctor ratio globally.
- Several regions show widening workforce imbalance over time.
- The top five countries with the highest ratios are concentrated in Africa and the Eastern Mediterranean region.
- In Canada (2018–2023), nurse growth significantly outpaced doctor growth.
- A strong positive correlation exists between doctors and nurses globally in 2023.

---

## Dashboard Features

The Tableau dashboard includes:

- Top and bottom five countries by nurse-to-doctor ratio
- Regional average comparison
- Time-series trends from 2010 to 2023
- Canada-focused workforce analysis
- Correlation analysis between doctors and nurses per 10,000 population

Dashboard preview:

![Dashboard Preview](Tableau/global-health-workforce/assets/global-health-workforce:dashboard-preview.jpeg)

---

## Project Deliverables

- Interactive Tableau dashboard
- Python data cleaning and analysis code
- Final analytical report
- Presentation slides

Files included:

- S25_INFO8677_sec2_Group1_Final Report.docx  
- S25_INFO8677_sec2_Group1_Group Project.pptx

---

## My Role and Contributions

- Retrieved and cleaned WHO datasets using Python
- Designed the data model and derived key metrics
- Conducted exploratory data analysis
- Developed Tableau dashboard visualizations
- Generated insights and recommendations
- Contributed to the final report and presentation

---

## Recommendations

- Invest in doctor training and retention in high-ratio regions
- Apply data-driven healthcare workforce planning
- Expand and empower advanced nursing roles
- Encourage global collaboration and standardized reporting

