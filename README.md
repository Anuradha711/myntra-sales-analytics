# myntra-sales-analytics
# Myntra Sales & Product Analysis

## Project Overview
This repository contains a comprehensive analysis of Myntra's e-commerce data. The project focuses on understanding market trends, brand positioning, and pricing dynamics across various lifestyle and fashion categories.

## Key Features
- **Data Cleaning:** Transformation of raw e-commerce data (24k+ entries) into a refined analytical dataset (11k+ entries).
- **Brand Performance:** Analysis of top-performing brands like *Roadster*, *HRX*, and *DressBerry* based on ratings and product volume.
- **Pricing Insights:** Comparison between Marked Price vs. Discounted Price to calculate average savings and revenue potential.
- **Category Deep-dive:** Breakdown of 245+ product categories ranging from apparel to accessories.

## Dataset Highlights (Cleaned Data)
| Metric | Value |
| :--- | :--- |
| **Total Products** | 11,438 |
| **Total Brands** | 966 |
| **Product Categories** | 245 |
| **Average Rating** | 4.16 / 5.0 |
| **Average Discount** | ~47% |

## Repository Structure
- `Raw Data.csv`: Original scraped/extracted data.
- `Clean Data.csv`: Processed data with outliers removed and normalized values.
- `Brands Pivot.csv`: Aggregated metrics (Average Rating, Total Products) by brand.
- `Products Pivot.csv`: Product-level performance metrics.
- `Dashboard.csv`: Summary statistics used for visualization.

## Analysis Goals
1. **Discount Impact:** How do heavy discounts (70%+) affect product ratings and popularity?
2. **Brand Dominance:** Identifying which brands lead in terms of customer engagement (Rating Count).
3. **Revenue Analysis:** Estimating potential revenue based on discounted pricing and popularity markers.

## How to Run
The data is provided in CSV format and can be easily imported into **Python (Pandas)**, **Excel**, or **Tableau/Power BI** for further visualization.
