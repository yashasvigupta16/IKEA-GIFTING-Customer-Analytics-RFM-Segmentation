# IKEA Gifting – Customer Analytics & RFM Segmentation

## Project Overview

This project simulates a real-world analytics engagement for a fictional UK-based gifting and home decor e-commerce business, **IKEA Gifting**.
The objective was to transform raw transactional data into actionable business insights through an end-to-end data analytics workflow. The project involved defining business requirements, exploring and cleaning data, performing customer-level analysis and RFM segmentation using SQL, and developing an interactive Power BI dashboard to support data-driven business decisions.
Using approximately **1,067,071 transaction records** from the Online Retail II dataset, the analysis focuses on understanding customer purchasing behaviour, identifying high-value customer segments, and evaluating customer churn risk.

## Business Problem

The business aims to identify its most valuable customers and reduce potential customer churn through more targeted retention strategies.
Currently, leadership lacks a structured, data-driven understanding of customer value and purchasing behaviour. As a result, retention efforts are largely reactive rather than focused on customers based on their value, engagement, and purchasing patterns.

## Business Questions Answered

This analysis aims to answer the following business questions:

- **Customer Value:** Who are the most valuable customers, and how much revenue do they contribute to the business?
- **Churn Risk:** Which customers have become inactive and may be at risk of churning?
- **Time-Based Trends:** How do customer value and purchasing activity change across months, quarters, and years?
- **Geographic Analysis:** How do customer value and churn risk vary across different geographic markets?
- **Business Recommendations:** What targeted actions can the business take to improve customer retention and engagement across different customer segments?

# Tools & Technologies

- **SQL Server:** Data cleaning, Data Transformation, Customer Analysis and RFM segmentation.
- **Power BI:** Data modelling, DAX, interactive dashboards and data visualisation.

## Project Workflow

**1. Data Preparation & Cleaning (SQL)**
- Imported and combined transaction data from two datasets.
- Checked for missing values and duplicate records.
- Handled incorrect and invalid data.
- Removed cancelled transactions and records with non-positive quantities.
- Converted columns into appropriate data types.

**2. Customer Analysis (SQL)**
- Analysed customer purchasing behaviour.
- Calculated Recency, Frequency and Monetary values.
- Used SQL window functions such as "NTILE()" to assign RFM scores.
- Created customer segments based on RFM scores.
- Identified Champions, Loyal, At Risk, New, Needs Attention and Lost customers.
- Classified customers as churned based on the 90-day inactivity rule.

**3. Power BI Dashboard**
- Connected the cleaned data to Power BI.
- Created relationships and measures using DAX.
- Designed interactive visuals to analyse customer segments, revenue, churn and country-wise performance.
- Added slicers and filters to make the dashboard interactive.

## Core Concepts Demonstrated

- **RFM Analysis:** Evaluating customers based on Recency, Frequency, and Monetary value to measure purchasing behaviour and customer value using a standardized scoring approach.
- **Customer Segmentation:** Translating RFM scores into meaningful business segments: Champions, Loyal, At Risk, New, Needs Attention, and Lost.
- **Churn Definition & Flagging:** Applying a fixed 90-day inactivity threshold to identify customers with potential churn risk.
- **Data Quality & Cleaning:** Handling mixed date formats, invalid data type conversions, missing values, and duplicate records using SQL techniques and window functions.
- **Data Modeling for BI:** Preparing a unified customer-level analytical table to support consistent reporting across multiple Power BI pages.
- **Interactive Dashboard Design:** Building interactive Power BI reports using slicers, bookmark-based toggles, KPI visuals, and multi-page navigation.
- 
## Key Business Findings
After analysing the data, I identified the following findings:
**1. Customer Segmentation**
- Out of 5,881 customers, 1,269 belong to the Champions segment.
- Champions represent approximately 21.57% of the total customer base.
- They generated around $11.6 million, contributing approximately 68.2% of total revenue.
- This shows that a relatively small group of customers contributes a major share of total revenue.

**2. Customer Churn Analysis**
- Approximately 50.86% of customers were classified as churned based on the 90-day inactivity rule.
- The Lost segment contains 1,443 customers, representing around 24.5% of the total customer base.
- These churned customers had generated approximately $737,590 in historical revenue.
- This shows that a significant number of customers are inactive and could be targeted through re-engagement strategies.

**3. Revenue Analysis**
- Revenue increased from 2009 to 2010.
- A slight decline in revenue was observed from 2010 to 2011.
- Quarterly revenue showed an increasing trend.
- This helped me understand revenue performance across different time periods.

**4. Customer Base Analysis**
- The customer base remained almost stable between 2010 and 2011.
- Customer count decreased slightly from 4,233 in 2010 to 4,220 in 2011.
- This represents a decline of approximately 0.31%.

**5. Country-wise Analysis**
- The United Kingdom has the highest number of customers and generates the highest revenue.
- The top five countries based on average customer value are:
  1. EIRE
  2. Singapore
  3. Netherlands
  4. Australia
  5. Denmark

**6. Churn Trend Analysis**
- Quarterly churn percentage showed a declining trend.
- Yearly churn increased from 2009 to 2010.
- It then decreased from 2010 to 2011.
- This helped identify changes in customer churn over time.

## Key Learning Outcomes
Through this project, I gained practical experience in:
- Working with large datasets using SQL Server.
- Cleaning and preparing transaction data.
- Writing SQL queries using CTEs, joins and window functions.
- Performing RFM analysis and customer segmentation.
- Understanding customer churn and purchasing behaviour.
- Creating DAX measures and interactive Power BI dashboards.
- Converting raw data into meaningful business insights.

## Dashboard Structure
The Power BI report consists of three interactive pages designed to provide an overview of business performance, customer behaviour, and RFM segment performance.
### Page 1 — Home & Navigation
- Project title and introduction.
- Navigation buttons to access the Business Overview and RFM Analysis pages.
- A glossary explaining key metrics: Recency, Frequency, Monetary, and Churn %.

### Page 2 — Business Overview
**Key Performance Indicators (KPIs):**
- Total Customers
- Total Revenue
- Customer Churn %
- Average Customer Value
**Visualizations & Analysis:**
- Revenue and customer count toggle using bookmarks.
- Customer segment breakdown.
- Monthly, quarterly, and yearly performance trends.
**Interactive Filters:**
- Month
- Quarter
- Year
- Country
- Customer Segment
- Churn Status

### Page 3 — RFM Analysis
**Segment Performance Summary:**
A detailed table displaying:
- Customer count by segment.
- Revenue contribution by segment.
- Average Recency, Frequency, and Monetary scores by segment.
**Additional Analysis:**
- Average Customer Value across different customer segments.
- Customer churn percentage trends over time.
- Comparison of customer value and engagement across segments.

## Credits & Acknowledgement

I would like to acknowledge Mansi Goel for her YouTube tutorial on SQL-based RFM Analysis, which helped me understand the approach to customer segmentation and apply it in this project.

## Conclusion
This project helped me understand how SQL and Power BI can be used together to analyse customer data and identify important business insights.
By performing RFM analysis, I was able to identify high-value customers, understand customer churn, analyse revenue trends and explore geographical performance.
It was a valuable learning experience that helped me improve my SQL, Power BI and analytical skills.

---

Project Type: Customer Analytics & Segmentation

Tools Used: SQL Server, Power BI

Dataset Size: Approximately 1.07 million records
