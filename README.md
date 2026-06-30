# Retail Banking Customer Insights

**Tools:** SQL · Python (data generation)
**Dataset:** 100,000+ simulated retail banking customer records

## Overview

A SQL-focused exploration of a simulated retail banking customer base, looking at deposit and loan portfolio composition, customer segmentation, regional distribution, and digital banking adoption.

## What I did

- Generated a synthetic dataset of 100,000+ retail banking customers in Python, covering demographics, income, customer segment, deposit/loan balances, product holdings, and digital banking usage.
- Wrote 10 SQL queries against the dataset covering: portfolio-level summary (total deposits, loans, revenue), active vs. inactive customer mix, customer segment distribution, deposit and loan portfolio by segment, product adoption, regional deposit/loan distribution, and mobile/internet banking adoption.
- Used aggregate functions, GROUP BY, and window functions (e.g., percentage-of-total via `COUNT(*) OVER()`) to build the summary views.

## Repo contents

- `/SQL` — `Retail_banking_customer_data_Queries.sql`: table schema and the 10 analysis queries
- `/Python` — `retail_banking_customer_data_generation.ipynb`: notebook that generates the synthetic dataset
- `/Excel` — `retail_banking_customer_dataset.csv`: the generated dataset

## Data note

This dataset is fully synthetic, generated in Python to resemble realistic retail banking customer attributes. No real customer or institutional data is used.

## Next steps

Planned additions: a Power BI dashboard on top of these queries, and a customer segmentation or churn-risk model in Python to extend this from descriptive to predictive analysis.
