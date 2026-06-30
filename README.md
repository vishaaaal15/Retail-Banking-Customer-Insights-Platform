# 👥 Retail Banking Customer Insights Platform

**Author:** Vishal Singh | [LinkedIn](https://linkedin.com/in/vishal-singhdataanalyst) | [GitHub](https://github.com/vishaaaal15)  
**Stack:** SQL · Python · Power BI  
**Dataset:** 100,000+ retail banking customers | ₹500M+ deposits | ₹300M+ lending  
**Domain:** Customer Analytics · Retail Banking Intelligence · Acquisition Analytics

---

## 📌 Project Overview

A comprehensive retail banking customer intelligence platform that analyses 100K+ customer profiles to identify acquisition segments, product adoption trends, churn risk, and cross-sell opportunities. Delivers actionable insights for customer relationship management and digital acquisition strategy.

---

## 📁 Repository Structure

```
Retail-Banking-Customer-Insights-Platform/
│
├── data/
│   └── retail_banking_customers.csv     # 100K+ customer records
│
├── sql_queries/
│   ├── 01_customer_overview.sql         # Portfolio-level customer summary
│   ├── 02_segment_analysis.sql          # Retail/SME/Premium segmentation
│   ├── 03_product_adoption.sql          # Which products each segment uses
│   ├── 04_cross_sell_opportunities.sql  # Customers with <2 products
│   ├── 05_churn_indicators.sql          # Low balance + low engagement flags
│   └── 06_deposit_lending_mix.sql      # Deposit vs lending exposure by segment
│
├── python_analysis/
│   ├── customer_segmentation.py         # RFM + K-Means clustering
│   ├── churn_prediction.py             # Churn risk scoring model
│   └── product_propensity.py           # Next-best-product recommendation
│
├── dashboards/
│   └── Retail_Customer_Insights.pbix   # Power BI executive dashboard
│
└── outputs/
    ├── customer_segment_kpis.csv        # KPIs by customer segment
    ├── churn_risk_accounts.csv          # High-risk churn accounts
    └── cross_sell_targets.csv          # Cross-sell opportunity list
```

---

## 📊 Key Findings

| Metric | Value | Insight |
|--------|-------|---------|
| Total Customers Analysed | 100,000+ | — |
| Total Deposit Book | ₹500M+ | — |
| Total Lending Book | ₹300M+ | — |
| Avg Products per Customer | 1.8 | 🔴 Cross-sell opportunity |
| Premium Segment Share | 10% customers | 38% of revenue |
| Churn Risk (High) Accounts | 12,400 | 🔴 URGENT |
| Top Cross-Sell Product | Fixed Deposits | 34K eligible customers |

---

## 🔍 SQL Highlights

```sql
-- Cross-sell opportunity identification
SELECT
    segment,
    COUNT(customer_id)                  AS eligible_customers,
    SUM(total_deposits)                 AS deposit_value,
    AVG(credit_score)                   AS avg_credit_score
FROM customer_profiles
WHERE product_count < 2
  AND years_with_bank >= 1
  AND credit_score >= 650
GROUP BY segment
ORDER BY eligible_customers DESC;

-- Customer Lifetime Value by segment
SELECT
    segment,
    ROUND(AVG(total_deposits + total_lending * 0.03), 0) AS estimated_clv,
    COUNT(*) AS customer_count
FROM customer_profiles
GROUP BY segment
ORDER BY estimated_clv DESC;
```

---

## 📈 Dashboard Features

**Power BI — Customer Insights Executive Dashboard**
- Customer base breakdown by segment and geography
- Deposit and lending mix (stacked bar)
- Product adoption heatmap (segment × product)
- Churn risk distribution (gauge + trend)
- Cross-sell opportunity funnel
- Top 10 branches by customer value

---

## 🛠️ How to Run

```bash
git clone https://github.com/vishaaaal15/Retail-Banking-Customer-Insights-Platform
pip install pandas numpy scikit-learn matplotlib seaborn
python python_analysis/customer_segmentation.py
```

---

## 🏷️ Topics
`customer-analytics` `retail-banking` `sql` `python` `power-bi` `customer-segmentation` `churn-prediction` `cross-sell` `banking-analytics` `clv` `acquisition-analytics`
