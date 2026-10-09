# 📊 Sales Insights Data Analysis | SQL & Power BI

<div align="center">

### Turning Sales Data into Actionable Business Insights

**MySQL · SQL Analytics · Power BI · Business Intelligence**

[![MySQL](https://img.shields.io/badge/Database-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![Power BI](https://img.shields.io/badge/Visualization-Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
[![SQL](https://img.shields.io/badge/Language-SQL-306998?style=for-the-badge)](https://en.wikipedia.org/wiki/SQL)
[![Status](https://img.shields.io/badge/Project-Portfolio%20Project-2E8B57?style=for-the-badge)](#-project-overview)

*A hands-on sales analytics project exploring sales performance, customer behavior, product trends, market performance, time-series analysis, and data quality.*

</div>

---

## 📑 Table of Contents

- [Project Overview](#-project-overview)
- [Business Problem](#-business-problem)
- [Project Objectives](#-project-objectives)
- [Tools and Technologies](#-tools-and-technologies)
- [Repository Structure](#-repository-structure)
- [SQL Analysis and Business Questions](#-sql-analysis-and-business-questions)
- [SQL Skills Demonstrated](#-sql-skills-demonstrated)
- [Data Quality Investigation](#-data-quality-investigation)
- [Power BI Dashboard](#-power-bi-dashboard)
- [Business Value](#-business-value)
- [Key Findings](#-key-findings)
- [How to Run the Project](#-how-to-run-the-project)
- [Limitations and Considerations](#-limitations-and-considerations)
- [Learning Outcomes](#-learning-outcomes)
- [Credits](#-credits)
- [Contact](#-contact)

---

## 🎯 Project Overview

The **Sales Insights Data Analysis** project uses SQL and Power BI to explore sales transaction data and investigate practical business questions.

The SQL analysis focuses on sales metrics, customer and product performance, customer-type comparisons, geographic performance, time-based trends, and data quality. Power BI is used to visualize sales performance and communicate information through a business intelligence dashboard.

The project demonstrates a structured analytics workflow:

**Business Questions → Data Exploration → SQL Analysis → Data Quality Checks → Visualization → Business Insights**

This repository contains SQL scripts organized by analytical topic, along with the Power BI report and project documentation.

> **Project background:** This is a learning and portfolio project based on the Codebasics Sales Insights tutorial. The tutorial is credited in this README. Any independent extensions or additional findings should be identified separately and supported by verified query results.

## 🧩 Business Problem

Sales data is often stored across multiple related tables, such as transactions, customers, products, markets, and dates. Without structured analysis, it can be difficult for business stakeholders to understand sales performance, identify high-value customers, evaluate product contribution, and recognize changes over time.

Sales teams and decision-makers need answers to questions such as:

- Are sales increasing or decreasing year over year?
- Which customers contribute the highest sales amounts?
- Which products perform best by sales value and quantity?
- How do E-Commerce and Brick & Mortar customer segments compare?
- Which markets, cities, and zones generate the most sales?
- Are there monthly or seasonal sales patterns?
- Are inconsistent source-data values affecting the reliability of reports?

### 💡 Project Approach

This project addresses these analytical questions by using SQL to transform transaction-level data into meaningful metrics, rankings, and comparisons. Power BI then provides a visual way to explore and communicate sales performance.

The objective is to demonstrate how a data analyst can move from raw business data to structured analysis and reporting. The project does not claim measured business impact for a real company; conclusions should be drawn from validated results.

## 🎯 Project Objectives

1. **Analyze overall sales performance** by calculating sales amounts, quantities, customer counts, and annual summaries.
2. **Understand customer contribution** by ranking customers and comparing customer types.
3. **Evaluate product performance** using sales amount and quantity sold.
4. **Compare market performance** across cities, markets, and geographic zones.
5. **Analyze time-based trends** using monthly sales summaries and year-over-year growth.
6. **Apply advanced SQL techniques** using CTEs and window functions.
7. **Investigate data quality** by identifying inconsistent currency values.
8. **Visualize sales performance** through a Power BI dashboard.

## 🧰 Tools and Technologies

| Tool / Technology | Purpose |
|---|---|
| **MySQL** | Querying and analyzing relational sales data |
| **SQL** | Filtering, joining, aggregating, ranking, and calculating analytical metrics |
| **Power BI** | Building visual reports and presenting sales KPIs |
| **Git & GitHub** | Version control, documentation, and portfolio presentation |

## 🗂️ Repository Structure

```text
sales-insights-data-analysis/
│
├── README.md
├── LICENSE
│
├── sql/
│   ├── 01_exploratory_analysis.sql
│   ├── 02_customer_analysis.sql
│   ├── 03_product_analysis.sql
│   ├── 04_market_analysis.sql
│   ├── 05_time_series_analysis.sql
│   ├── 06_advanced_sql.sql
│   └── 07_data_quality_checks.sql
│
├── powerbi/
│   └── sales_insights.pbix
│
└── images/
    └── sales_dashboard.png
```

*The `sql/`, `powerbi/`, and `images/` paths describe the intended organization. Adjust this tree to match the files actually committed to the repository. The screenshot is optional until added.*

## 🔎 SQL Analysis and Business Questions

### 1. 📈 Exploratory Analysis

**Business objective:** Establish a baseline understanding of the sales dataset.

Questions investigated:

- What is the total sales amount?
- What is the total quantity sold?
- How many unique customers and products are represented?
- How do transaction-row counts, sales amounts, and quantities vary by year?

**SQL concepts:** `SELECT`, `SUM()`, `COUNT()`, `COUNT(DISTINCT)`, `WHERE`, `GROUP BY`, `ORDER BY`.

### 2. 👥 Customer Analysis

**Business objective:** Understand customer contribution and compare customer segments.

Questions investigated:

- Who are the top 10 customers by total sales amount?
- Which customer has the highest total purchase quantity?
- How do E-Commerce and Brick & Mortar customers compare in total sales?
- How does average sales amount compare between customer types?

**SQL concepts:** `INNER JOIN`, `SUM()`, `AVG()`, `GROUP BY`, `ORDER BY`, `LIMIT`.

### 3. 🛍️ Product Analysis

**Business objective:** Identify products that lead in sales amount or quantity.

Questions investigated:

- What are the top 10 products by sales amount?
- What are the top 10 products by quantity sold?
- How do Own Brand and Distribution products compare in total sales?

**SQL concepts:** Joins, aggregation, sorting, and top-N analysis.

### 4. 🌍 Market Analysis

**Business objective:** Compare sales performance across geographic areas.

Questions investigated:

- Which market or city has the highest total sales amount?
- Which zone generates the highest total sales?
- Which market has the highest average sales amount per transaction row?

**SQL concepts:** `INNER JOIN`, `SUM()`, `AVG()`, `GROUP BY`, `ORDER BY`, `LIMIT`.

### 5. 🗓️ Time-Series Analysis

**Business objective:** Understand sales performance across reporting periods.

Questions investigated:

- What are the monthly sales totals for each year?
- Which named month has the highest combined sales across the available years?
- What is the total sales amount for 2018?
- What is the total sales amount for October 2017?
- What quantity was sold in June 2020?

**SQL concepts:** `YEAR()`, `MONTH()`, date filtering, aggregation, and chronological sorting.

### 6. 🧠 Advanced SQL Analysis

**Business objective:** Compare sales over time and rank customers within individual years.

Questions investigated:

- Who are the top five customers by sales in each year?
- What were the previous year's sales totals?
- How did sales change year over year?
- What is the year-over-year sales growth percentage?

**SQL concepts:**

- Common Table Expressions (CTEs)
- Window functions: `LAG()` and `ROW_NUMBER()`
- `OVER()` and `PARTITION BY`
- Percentage calculations
- `NULLIF()` to guard against division by zero

The year-over-year analysis uses `LAG()` to retrieve the previous year's sales total. The customer ranking analysis uses `ROW_NUMBER()` to assign rankings within each year.

### 7. 🧹 Data Quality Checks

**Business objective:** Investigate inconsistencies that could affect reporting accuracy.

Investigation performed:

- Inspected distinct currency values.
- Identified variants such as `INR` and `USD` with trailing carriage-return characters.
- Counted and inspected records containing these variants.

**SQL concepts:** `DISTINCT`, `COUNT()`, conditional filtering, and string inspection.

## 🧠 SQL Skills Demonstrated

This project demonstrates SQL techniques commonly used in data analysis and business intelligence.

| Skill Category | SQL Concepts |
|---|---|
| Query fundamentals | `SELECT`, `WHERE`, `ORDER BY`, `LIMIT` |
| Aggregation | `SUM()`, `COUNT()`, `COUNT(DISTINCT)`, `AVG()`, `ROUND()` |
| Grouping | `GROUP BY` and grouped metrics |
| Relational analysis | `INNER JOIN` across related tables |
| Advanced query structure | Common Table Expressions (`WITH`) |
| Window functions | `LAG()`, `ROW_NUMBER()`, `OVER()` |
| Partitioning | `PARTITION BY` |
| Time-based analysis | `YEAR()`, `MONTH()` and period comparisons |
| Ranking | Top-N customer and product analysis |
| Growth analysis | Year-over-year percentage calculations |
| Data quality | Inconsistent string detection and source-data validation |

These techniques demonstrate how SQL can be used not only to retrieve information but also to structure business analysis, compare performance, rank entities, and investigate potential data issues.

## 🧹 Data Quality Investigation: Currency Values

During data exploration, the currency column returned values including:

- `INR`
- `USD`
- `INR` with a trailing carriage-return character
- `USD` with a trailing carriage-return character

These values can appear similar when viewed casually but may be treated as distinct strings by SQL. This can affect filtering, grouping, and reporting.

### Why it matters

Data quality problems can lead to misleading summaries or inconsistent categories. Identifying these issues is an important step before trusting analytical results.

**Financial-data consideration:** Currency labels alone do not establish whether amounts can be combined. Confirm the source data's currency conventions and whether conversion is required before reporting a combined financial total. Do not simply remove currency labels or add INR and USD amounts together without a documented conversion basis.

The included SQL scripts investigate the affected values. Any cleanup should be performed only after validating the source data and documenting the transformation.

## 📊 Power BI Dashboard

The Power BI report is the visual reporting component of this project. It is intended to communicate sales performance through KPIs, charts, and comparisons.

### Dashboard Preview

Add a screenshot of your actual report to `images/sales_dashboard.png` and use the following Markdown to display it:

```markdown
![Sales Insights Power BI Dashboard](images/sales_dashboard.png)
```

If the screenshot has not been uploaded yet, leave the preview section out until the file is available.

The `.pbix` file can be opened using Power BI Desktop. Reviewers may need to configure the data connection for their own environment before refreshing the report.

## 💼 Business Value

The SQL analysis is designed to help investigate several practical business needs:

- **Sales monitoring:** Establish overall sales and quantity metrics.
- **Customer analysis:** Identify high-sales customers and compare customer segments.
- **Product analysis:** Compare products by sales amount and quantity.
- **Market analysis:** Compare sales performance across geographic areas.
- **Trend analysis:** Investigate monthly performance and year-over-year changes.
- **Reporting reliability:** Identify inconsistent source-data values before using them in reports.

These are the intended uses of the analysis. Specific business conclusions should be based on actual query outputs rather than assumptions.

## 📌 Key Findings

**Complete this section after executing the SQL queries and validating the results.** Add three to five findings that demonstrate your analytical thinking.

Suggested format:

- **Sales trend:** `[Insert verified year-over-year growth or decline and the years compared.]`
- **Customer performance:** `[Insert the highest-sales customer identifier and verified sales amount.]`
- **Product performance:** `[Insert the top product and its sales amount or quantity.]`
- **Market performance:** `[Insert the highest-performing market and its measured sales.]`
- **Data quality:** Currency values included carriage-return variants; `[insert verified affected-row counts, if useful.]`

Replace all bracketed placeholders before publishing a final version. Include units and reporting periods where relevant, and avoid sharing confidential or personally identifiable customer information.

## 🚀 How to Run the Project

1. Clone or download this repository.
2. Open the SQL scripts in the `sql/` directory using MySQL Workbench or another MySQL-compatible SQL client.
3. Connect to a database containing the required tables.
4. Verify the schema and table names referenced by the scripts.
5. Execute the SQL files individually and inspect their result sets.
6. If using the Power BI report, open the `.pbix` file in Power BI Desktop and configure the data source for your environment.

### Expected Database Tables

The SQL scripts assume a schema named `sales` containing these tables:

- `transactions`
- `customers`
- `products`
- `markets`
- `date`

If your local database uses a different schema or table naming convention, update the references before running the queries.

## ⚠️ Limitations and Considerations

- The SQL scripts should be executed and validated against the source database before numerical findings are published.
- Confirm the grain of the `transactions` table. A count of rows is not necessarily a count of distinct orders.
- An average of `sales_amount` across rows may not represent average order value if orders contain multiple rows.
- Validate the meaning and units of `sales_amount` before describing it as standardized revenue.
- Confirm currency conventions before combining amounts with different currency labels.
- `ROW_NUMBER()` assigns a unique rank to each row; use `RANK()` or `DENSE_RANK()` if ties should share a rank.
- Grouping by month name across all years combines the same named month from every year.
- This is a learning and portfolio project, not a claim of client work or measured business impact.

## 📚 Learning Outcomes

Through this project, I practiced how to:

- Translate business questions into SQL queries.
- Explore and summarize relational sales data.
- Join related tables to compare business dimensions.
- Use aggregate functions to calculate sales metrics.
- Apply CTEs and window functions to more complex analytical questions.
- Compare sales performance across customers, products, markets, and periods.
- Investigate data quality issues before interpreting results.
- Organize SQL scripts for readability and reuse.
- Present sales information through Power BI reporting.

## 🙏 Credits

This project was completed as a learning exercise based on the Codebasics Sales Insights tutorial.

- **YouTube tutorial:** [Sales Insights Data Analysis Project using Power BI](https://www.youtube.com/watch?v=hhZ62IlTxYs&list=PLeo1K3hjS3uva8pk1FI3iK9kCOKQdz1I9)
- **Learning source:** [Codebasics on YouTube](https://www.youtube.com/@codebasics)

The tutorial is credited as the learning source. Any independently developed queries, extensions, or conclusions should be identified clearly and supported by the actual analysis.

## 📬 Contact

**Jayesh Vengurlekar**  
Aspiring Data Analyst

- **GitHub Repository:** [sales-insights-data-analysis](https://github.com/jaythecool/sales-insights-data-analysis)
- **LinkedIn:** [LinkedIn profile URL](https://www.linkedin.com/in/jayesh-vengurlekar-80309214b/)

---

<div align="center">

### ⭐ Thanks for visiting this project!

*Continuously learning and building practical projects with SQL, Power BI, and analytical problem-solving.*

</div>
