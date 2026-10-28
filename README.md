# 🛒 Retail Store Sales Insights | Python, SQL & Power BI

## 📌 Project Overview

The **Retail Store Sales Insights** project analyzes retail transaction data to understand sales performance, product trends, customer spending patterns, payment preferences, and location-wise performance.

This end-to-end data analytics project uses Python for data cleaning, MySQL for querying and business analysis, and Power BI for interactive dashboard development.

The objective is to transform raw retail data into meaningful business insights that support data-driven decision-making.

## 🎯 Project Objectives

- Analyze overall sales and transaction performance.
- Identify top-performing products and categories.
- Compare product prices and quantities sold.
- Understand customer spending across different payment methods.
- Analyze transaction volume across retail locations.
- Compare spending and quantities between discounted and non-discounted records.
- Develop an interactive Power BI dashboard for business reporting.

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data cleaning and preprocessing |
| Pandas & NumPy | Data manipulation and missing-value analysis |
| MySQL | Data storage and business analysis |
| SQL | Filtering, aggregation, grouping, sorting, and subqueries |
| Power BI | Interactive dashboards and data visualization |
| Power Query | Data transformation |
| DAX | KPI calculations and measures |
| Git & GitHub | Version control and project documentation |

## 📂 Project Workflow

### 1. Data Cleaning & Preparation — Python

- Inspected the dataset and analyzed data quality.
- Identified missing values in important columns.
- Cleaned and prepared the dataset for analysis.
- Examined missing-value patterns before deciding how to handle them.
- Prepared the cleaned data for import into MySQL.

### 2. Data Analysis — MySQL

- Imported the prepared dataset into MySQL.
- Used SQL aggregate functions, filtering, grouping, sorting, and subqueries.
- Analyzed product performance and category-wise sales.
- Compared customer spending across payment methods.
- Investigated transaction volume across locations.
- Compared spending and quantities based on discount status.

### 3. Dashboard Development — Power BI

- Connected Power BI to the MySQL dataset.
- Checked data types and prepared the data for visualization.
- Created KPI cards and charts to summarize sales performance.
- Built an interactive dashboard with category, location, discount, and payment method analysis.

## 📊 Dataset Description

The dataset contains retail transaction information with the following columns:

| Column | Description |
|---|---|
| `transaction_id` | Transaction identifier |
| `customer_id` | Customer identifier |
| `category` | Product category |
| `item` | Product name |
| `price_per_unit` | Price per unit |
| `quantity` | Quantity purchased |
| `total_spent` | Recorded spending amount |
| `payment_method` | Payment method used |
| `location` | Transaction location |
| `discount_applied` | Discount status, where available |

**Data quality consideration:** Missing values were present in several columns. Missing product names, prices, quantities, spending values, and discount statuses require careful handling. Unknown discount statuses should not automatically be classified as non-discounted records.

## 🔍 Business Questions Answered

### 1. Product Performance
- Which product has the highest unit price?
- Which product has the highest sales quantity?
- Which product categories generate the highest recorded sales?
- How does average product price vary across categories?

### 2. Location Analysis
- How does transaction volume vary by location?
- Which location generates the highest recorded sales?
- How does sales performance differ between online and in-store transactions?

### 3. Payment Method Analysis
- How does customer spending differ across payment methods?
- Which payment method has the highest total spending?
- How does average spending vary across payment methods?

### 4. Discount Analysis
- How do spending and quantities compare between discounted and non-discounted records?
- How many records have missing discount information?
- How does recorded quantity vary by discount status?

## 📈 Power BI Dashboard

The Power BI dashboard provides a visual overview of retail sales performance.

**Dashboard features include:**

- Total Sales KPI Card
- Sales by Category
- Average Price by Category
- Total Sales by Location
- Quantity by Category
- Discount slicer
- Payment Method slicer

These visuals help users compare product categories, explore location-wise performance, and investigate spending patterns across payment methods and discount groups.

### Dashboard Preview

Add your actual Power BI dashboard screenshot to the repository and display it here:

```markdown
![Retail Store Sales Dashboard](images/retail-sales-dashboard.png)
```

Make sure the image filename and folder path match your repository.

## 💡 Key Insights

Use this section to document findings based on your actual SQL queries and Power BI results.

Examples of insights to investigate:

- The category with the highest recorded sales.
- The product with the highest recorded quantity.
- The location with the largest transaction volume.
- Differences in total and average spending across payment methods.
- Differences in quantity and spending between known discount groups.

Add actual figures from your analysis rather than assuming which product, category, location, or payment method performs best.

## 📁 Suggested Repository Structure

```text
Retail-Store-Sales-Insights/
│
├── data/
│   └── README.md
│
├── notebooks/
│   └── data_cleaning.ipynb
│
├── sql/
│   └── sales_analysis.sql
│
├── powerbi/
│   └── retail_sales_dashboard.pbix
│
├── images/
│   └── retail-sales-dashboard.png
│
└── README.md
```

Adjust the folder names to match your actual repository. Avoid uploading confidential information or unnecessary copies of the raw dataset.

## 🚀 How to Explore the Project

1. Clone or download the repository.
2. Open the Python notebook to review the data-cleaning process.
3. Import the prepared dataset into MySQL.
4. Execute the SQL queries to reproduce the business analysis.
5. Open the Power BI `.pbix` file to explore the dashboard.

To refresh the dashboard, configure the MySQL connection for your own environment. Never commit database passwords or credentials to GitHub.

## 📚 Skills Demonstrated

- Data cleaning and preprocessing
- Exploratory data analysis
- Missing-value investigation
- SQL querying and aggregation
- Business-oriented data analysis
- KPI development and visualization
- Power BI dashboard design
- Data storytelling and documentation
- End-to-end data analytics workflow

## 🔮 Future Improvements

- Add customer segmentation analysis.
- Improve data quality validation and documentation.
- Develop additional drill-through pages and interactive filters.
- Compare customer spending across different product categories.
- Publish an accessible dashboard where appropriate.

## 👨‍💻 Author

**Shankar Dixit**

Aspiring Data Analyst | Python | SQL | Power BI

GitHub: [Shankar112004](https://github.com/Shankar112004)

---

⭐ If you find this project useful, feel free to explore the repository and share your feedback.
