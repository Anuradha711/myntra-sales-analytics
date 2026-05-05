# 🛍️ Myntra Product Data Analysis (SQL + Excel)

## 📌 Project Overview

This project performs end-to-end data analysis on Myntra product data using **SQL and Excel**.

The objective is to simulate a real-world data analyst workflow by:

* Cleaning and preparing data in Excel
* Analyzing data using SQL
* Creating insights and visualizations using Excel

---

## 💡 Business Problem

E-commerce platforms like Myntra manage thousands of products across different brands and categories.

Key business questions:

* Which products are most and least expensive?
* Which products are most popular?
* How do brands like Nike and Adidas perform?
* What price range dominates the market?

This project answers these using data-driven analysis.

---

## 🎯 Objectives

* Identify pricing trends (high vs low)
* Analyze product popularity using ratings
* Compare brand performance
* Segment products based on price range
* Generate actionable insights

---

## 🛠️ Tools & Technologies

* **SQL (MySQL)** → Data querying & analysis
* **Excel** → Data cleaning, pivot tables & visualization
* **GitHub** → Project hosting

---

## 🔄 Project Workflow

1. **Data Cleaning (Excel)**

   * Removed inconsistencies
   * Formatted columns
   * Prepared structured dataset

2. **Data Analysis (SQL)**

   * Filtering, sorting, ranking
   * Aggregations and calculations

3. **Visualization (Excel)**

   * Pivot tables
   * Charts for insights

---

## 📂 Project Files

* `myntra.sql` → SQL queries
* `products.csv` → Dataset
* `excel_analysis.xlsx` → Excel cleaning + charts

---

## 🔍 SQL Analysis

### 🔹 Top 5 Most Expensive Products

```sql
SELECT * FROM products 
ORDER BY marked_price DESC 
LIMIT 5;
```

### 🔹 Most Popular Products (Weighted Score)

```sql
SELECT product_name, rating, rating_count, 
       (rating * rating_count) AS popularity_score
FROM products
ORDER BY popularity_score DESC 
LIMIT 5;
```

### 🔹 Worst Rated Nike Products

```sql
SELECT product_name, rating
FROM products
WHERE brand_tag = 'Nike' AND rating != 0
ORDER BY rating ASC;
```

### 🔹 Mid-Range Products (₹1000–₹2000)

```sql
SELECT product_name, brand_tag, marked_price
FROM products
WHERE marked_price BETWEEN 1000 AND 2000;
```

---

## 📊 Excel Analysis

Excel was used to enhance analysis through cleaning and visualization.

### 🔧 Tasks Performed:

* Data cleaning & formatting
* Pivot table creation
* Price distribution analysis
* Brand-wise comparison

### 📈 Key Insights:

* Most products fall in the **₹1000–₹2000 range**
* **Nike and Adidas dominate** the t-shirt category
* Products with higher **rating_count are more reliable**
* High price ≠ high rating

---

## 📸 Project Preview

### 📊 Excel Dashboard

*(Add your screenshots here)*
![Excel Analysis](screenshots/excel_chart.png)

### 📊 SQL Output

![SQL Output](screenshots/sql_output.png)

---

## 📊 Key Insights

* Mid-range products dominate the market
* Brand reputation plays a key role in ratings
* Popularity should be measured using **rating × rating_count**
* Expensive products are not always highly rated

---

## 🚀 How to Run

1. Create database:

```sql
CREATE DATABASE myntra;
USE myntra;
```

2. Import dataset (`products.csv`)

3. Run queries from:

```
myntra.sql
```

4. Open Excel file for visualization:

```
excel_analysis.xlsx
```

---

## 📈 Future Improvements

* Build dashboard using Power BI / Tableau
* Perform analysis using Python (Pandas)
* Create recommendation system
* Apply machine learning

---

## 👩‍💻 Author

**Anuradha Vishwakarma**
Aspiring Data Analyst

**Skills:** SQL | Excel | Python | Java | Web Development

🔗 Add your links:

* GitHub
* LinkedIn

---

## ⭐ Support

If you like this project, give it a ⭐ on GitHub!
