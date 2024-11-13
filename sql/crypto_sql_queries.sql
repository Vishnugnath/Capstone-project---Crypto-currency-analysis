
-- Creating a view that joins binance, bitcoin, and ethereum tables by Date
CREATE VIEW crypto_data AS
SELECT 
    binance.Date AS Date,
    binance.Open AS Binance_Open, binance.Close AS Binance_Close, binance.High AS Binance_High, binance.Low AS Binance_Low, binance.Volume AS Binance_Volume,
    bitcoin.Open AS Bitcoin_Open, bitcoin.Close AS Bitcoin_Close, bitcoin.High AS Bitcoin_High, bitcoin.Low AS Bitcoin_Low, bitcoin.Volume AS Bitcoin_Volume,
    ethereum.Open AS Ethereum_Open, ethereum.Close AS Ethereum_Close, ethereum.High AS Ethereum_High, ethereum.Low AS Ethereum_Low, ethereum.Volume AS Ethereum_Volume
FROM 
    binance
INNER JOIN 
    bitcoin ON binance.Date = bitcoin.Date
INNER JOIN 
    ethereum ON binance.Date = ethereum.Date;

-- 1. Basic SELECT and Filtering
-- Q1: Retrieve all records from crypto_data where the Bitcoin opening price is greater than $50,000.
SELECT * 
FROM crypto_data
WHERE Bitcoin_Open > 50000;

-- Q2: Show only the Date, Ethereum closing price, and Binance volume for dates where the Ethereum closing price is above $3,000.
SELECT Date, Ethereum_Close, Binance_Volume 
FROM crypto_data
WHERE Ethereum_Close > 3000;

-- 2. Aggregation and Group By
-- Q3: Find the average closing price of Bitcoin for all records in crypto_data.
SELECT AVG(Bitcoin_Close) AS Avg_Bitcoin_Close 
FROM crypto_data;

-- Q4: Calculate the total Binance volume for each unique date.
SELECT Date, SUM(Binance_Volume) AS Total_Binance_Volume 
FROM crypto_data
GROUP BY Date;

-- 3. Joins and Multi-table Queries
-- Q5: Display all records from crypto_data where the Bitcoin closing price exceeds the Ethereum closing price on the same date.
SELECT * 
FROM crypto_data
WHERE Bitcoin_Close > Ethereum_Close;

-- Q6: Retrieve dates and prices where both Ethereum and Bitcoin opening prices were above $2,000 and $30,000, respectively.
SELECT Date, Ethereum_Open, Bitcoin_Open 
FROM crypto_data
WHERE Ethereum_Open > 2000 AND Bitcoin_Open > 30000;

-- 4. Advanced Filtering with LIKE and IN
-- Q7: Find all records where the Date is in January 2023.
SELECT * 
FROM crypto_data
WHERE Date LIKE '2023-01%';

-- Q8: Retrieve records for dates where the Ethereum volume is either 500,000, 1,000,000, or 1,500,000.
SELECT * 
FROM crypto_data
WHERE Ethereum_Volume IN (500000, 1000000, 1500000);

-- 5. Subqueries
-- Q9: Find dates where the Bitcoin volume was higher than the average Binance volume.
SELECT Date, Bitcoin_Volume 
FROM crypto_data
WHERE Bitcoin_Volume > (SELECT AVG(Binance_Volume) FROM crypto_data);

-- Q10: List dates where Ethereum had the highest closing price of all three cryptocurrencies.
SELECT Date 
FROM crypto_data
WHERE Ethereum_Close = (SELECT MAX(Ethereum_Close) FROM crypto_data);

-- 6. Case Statements
-- Q11: Create a column indicating "High Volume" if Binance volume is over 1,000,000; otherwise, "Low Volume."
SELECT Date, Binance_Volume,
    CASE 
        WHEN Binance_Volume > 1000000 THEN 'High Volume'
        ELSE 'Low Volume'
    END AS Volume_Level
FROM crypto_data;

-- Q12: Add a label for each date as "Bitcoin Dominated" if Bitcoin's closing price is the highest among the three.
SELECT Date,
    CASE 
        WHEN Bitcoin_Close > Ethereum_Close AND Bitcoin_Close > Binance_Close THEN 'Bitcoin Dominated'
        ELSE 'Not Dominated'
    END AS Dominance
FROM crypto_data;

-- 7. Window Functions
-- Q13: Show the average Ethereum closing price over the last 5 days for each date.
SELECT Date, Ethereum_Close,
    AVG(Ethereum_Close) OVER (ORDER BY Date ROWS 4 PRECEDING) AS Avg_Close_Last_5_Days
FROM crypto_data;

-- Q14: Rank each record based on Bitcoin’s closing price.
SELECT Date, Bitcoin_Close,
    RANK() OVER (ORDER BY Bitcoin_Close DESC) AS Bitcoin_Rank
FROM crypto_data;

-- 8. Date and Time Functions
-- Q15: Extract only the month from the Date in crypto_data.
SELECT Date, MONTH(Date) AS Month
FROM crypto_data;

-- Q16: Find the number of trading days in 2023.
SELECT COUNT(*) AS Trading_Days 
FROM crypto_data
WHERE YEAR(Date) = 2023;

-- 9. String Functions
-- Q17: Concatenate the date and "Crypto Market" to create a unique identifier.
SELECT CONCAT(Date, '_Crypto Market') AS Unique_ID 
FROM crypto_data;

-- Q18: Format the Date to display as "Month-Day-Year."
SELECT Date, DATE_FORMAT(Date, '%m-%d-%Y') AS Formatted_Date
FROM crypto_data;

-- 10. Temporary Tables
-- Q19: Create a temporary table of records where Ethereum’s opening price is over $2,000.
CREATE TEMPORARY TABLE high_ethereum_open AS
SELECT * 
FROM crypto_data
WHERE Ethereum_Open > 2000;

-- 11. Indexing
-- Q20: Create an index on the Date column in the crypto_data view to speed up date-based queries.
CREATE INDEX idx_date ON crypto_data(Date);

-- 12. Stored Procedures
-- Q21: Create a stored procedure that retrieves records where Bitcoin’s closing price is above a given threshold.
DELIMITER //
CREATE PROCEDURE GetHighBitcoinClose(IN price_threshold DECIMAL(10, 2))
BEGIN
    SELECT * 
    FROM crypto_data
    WHERE Bitcoin_Close > price_threshold;
END //
DELIMITER ;

-- 13. Triggers
-- Q22: Create a trigger that logs the original Bitcoin opening price before it’s updated.
CREATE TRIGGER before_bitcoin_update
BEFORE UPDATE ON bitcoin
FOR EACH ROW
BEGIN
    INSERT INTO bitcoin_log(Date, Old_Open)
    VALUES (NEW.Date, OLD.Open);
END;

-- 14. Views
-- Q23: Create a view showing the average closing prices of all cryptocurrencies by month.
CREATE VIEW monthly_avg_closing AS
SELECT 
    YEAR(Date) AS Year, MONTH(Date) AS Month,
    AVG(Bitcoin_Close) AS Avg_Bitcoin_Close,
    AVG(Ethereum_Close) AS Avg_Ethereum_Close,
    AVG(Binance_Close) AS Avg_Binance_Close
FROM crypto_data
GROUP BY Year, Month;

-- 15. User-defined Functions
-- Q24: Create a function that calculates the price difference between Ethereum’s open and close prices.
DELIMITER //
CREATE FUNCTION EthereumPriceDiff(date_val DATE) RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE price_diff DECIMAL(10, 2);
    SELECT (Close - Open) INTO price_diff FROM ethereum WHERE Date = date_val;
    RETURN price_diff;
END //
DELIMITER ;

-- 16. Complex Subqueries
-- Q25: Find the date with the highest daily volume across all three cryptocurrencies.
SELECT Date 
FROM crypto_data
ORDER BY (Bitcoin_Volume + Ethereum_Volume + Binance_Volume) DESC
LIMIT 1;
