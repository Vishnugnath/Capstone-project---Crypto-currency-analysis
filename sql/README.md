
# Capstone Project: Cryptocurrency Analysis

This project is designed to analyze cryptocurrency market data using advanced SQL techniques, covering key areas such as data views, filtering, aggregations, and custom SQL functions. The data consists of records from three major cryptocurrencies: **Bitcoin**, **Ethereum**, and **Binance Coin**. The queries and procedures within this project enable you to analyze market trends, compare prices, and create views and aggregations for detailed insights.

## Project Overview

The **PROJECT_SQL.sql** file includes SQL code that accomplishes various types of data analysis and transformation, including:

1. **Data Views** - The project creates views that simplify complex queries by joining the three cryptocurrency tables (Bitcoin, Ethereum, Binance) on their **Date** field. This allows seamless comparison of prices and volumes across cryptocurrencies for any given day.

2. **Basic Queries** - Examples include selecting and filtering records, such as retrieving dates where Bitcoin's opening price exceeds $50,000 or Ethereum’s closing price is above $3,000. These queries demonstrate data filtering based on price conditions.

3. **Aggregation & Grouping** - Aggregations calculate summary statistics like the **average closing price** of Bitcoin or the **total volume of Binance** for each day. Grouping by date enables these calculations across daily records.

4. **Advanced SQL Techniques** - CASE statements, window functions, and date/time functions add layers of analysis, such as ranking Bitcoin prices, identifying high-volume trading days, or formatting dates.

5. **Subqueries and CTEs (Common Table Expressions)** - These allow more complex queries, such as finding dates when the Bitcoin volume was higher than the average Binance volume or calculating the average daily closing price across all three cryptocurrencies.

6. **Indexes and Temporary Tables** - Creating indexes (e.g., on the Date column) optimizes queries, especially those filtering by date. Temporary tables store filtered data temporarily for intermediate analysis, like records where Ethereum's opening price is over $2,000.

7. **Stored Procedures & Triggers** - Stored procedures automate tasks, such as retrieving records based on a specified price threshold. Triggers, like the `before_bitcoin_update` trigger, log Bitcoin’s original opening price before any updates, providing an audit trail.

8. **User-defined Functions** - Custom functions allow specific calculations, such as computing the difference between Ethereum's opening and closing prices on any given date.

---

### Example Queries

Here are some example queries from the project that demonstrate its functionality:

- **Retrieve all records where Bitcoin's opening price is over $50,000:**
   ```sql
   SELECT * 
   FROM crypto_data
   WHERE Bitcoin_Open > 50000;
   ```

- **Display average Bitcoin closing price:**
   ```sql
   SELECT AVG(Bitcoin_Close) AS Avg_Bitcoin_Close 
   FROM crypto_data;
   ```

- **List dates where Bitcoin volume was higher than the average Binance volume:**
   ```sql
   SELECT Date, Bitcoin_Volume 
   FROM crypto_data
   WHERE Bitcoin_Volume > (SELECT AVG(Binance_Volume) FROM crypto_data);
   ```

---

## Requirements

To run the SQL code in this project, ensure the following:
- **Database**: MySQL (or any SQL-compatible database with support for views, triggers, and stored procedures).
- **Tables**: Data for **Bitcoin**, **Ethereum**, and **Binance** should be imported with a consistent **Date** column to allow for joins.

## Usage Instructions

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Vishnugnath/Capstone-project-Crypto-currency-analysis.git
   ```
2. **Navigate to the SQL Directory**:
   Go to the `/sql` folder in your local copy of the repository.

3. **Execute SQL File**:
   Open your SQL environment (such as MySQL Workbench), load the **PROJECT_SQL.sql** file, and execute the code step-by-step to view results.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---

## Acknowledgments

This capstone project was developed to explore cryptocurrency analysis using SQL. Special thanks to [Kaggle](https://www.kaggle.com/) for providing the datasets used in this project.
