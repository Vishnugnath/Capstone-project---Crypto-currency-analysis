# Capstone Project: Cryptocurrency Analysis

This project involves an in-depth exploratory and predictive analysis of three major cryptocurrencies: Bitcoin, Ethereum, and Binance Coin. The goal of this project is to analyze historical price data, perform advanced data preprocessing, and build predictive models using ARIMA, Support Vector Machines (SVM), Random Forest, and Exponential Smoothing. The project covers multiple aspects of data science, including time series analysis, exploratory data analysis (EDA), feature engineering, and machine learning model development.

## Table of Contents
1. [Project Overview](#project-overview)
2. [Dataset Information](#dataset-information)
3. [Cryptocurrency Featured Data](#cryptocurrency-featured-data)
4. [Installation](#installation)
5. [File Structure](#file-structure)
6. [Usage](#usage)
7. [Results](#results)
8. [License](#license)

## Project Overview

The objective of this capstone project is to explore and predict the price movements of Bitcoin (BTC), Ethereum (ETH), and Binance Coin (BNB) using historical market data. Through the use of time series forecasting models and machine learning algorithms, this project aims to provide insights into the cryptocurrency market's trends and volatility, while offering predictive capabilities for future price movements.

This project covers the following major tasks:
- **Exploratory Data Analysis (EDA)**: Cleaning, visualizing, and understanding patterns in the cryptocurrency data.
- **Feature Engineering**: Creating new technical indicators, statistical features, and transformed variables that can help in forecasting and predicting cryptocurrency prices.
- **Predictive Modeling**: Applying machine learning models (ARIMA, SVM, Random Forest, and Exponential Smoothing) to predict future price movements of cryptocurrencies.
- **Model Evaluation**: Comparing the performance of different models using appropriate evaluation metrics.

The repository contains several scripts, notebooks, and data files that you can use to reproduce the analysis and results.

## Dataset Information

The primary dataset contains historical price and trading volume data for three major cryptocurrencies:
- **Bitcoin** (`coin_Bitcoin.csv`)
- **Ethereum** (`coin_Ethereum.csv`)
- **Binance Coin** (`coin_BinanceCoin.csv`)

Each of these datasets includes the following columns:
- **Date**: The date when the data point was recorded.
- **Open**: The opening price of the cryptocurrency on the given date.
- **High**: The highest price observed during that day.
- **Low**: The lowest price observed during that day.
- **Close**: The closing price of the cryptocurrency for the day.
- **Adj Close**: The adjusted closing price after accounting for events like dividends and stock splits.
- **Volume**: The total volume of the cryptocurrency traded on the given day.

### Dataset Location

These datasets are located in the `/dataset` directory of this repository:
- [coin_Bitcoin.csv](https://github.com/Vishnugnath/Capstone-project-Crypto-currency-analysis/tree/main/dataset)
- [coin_Ethereum.csv](https://github.com/Vishnugnath/Capstone-project-Crypto-currency-analysis/tree/main/dataset)
- [coin_BinanceCoin.csv](https://github.com/Vishnugnath/Capstone-project-Crypto-currency-analysis/tree/main/dataset)

### Data Preprocessing

Before applying any machine learning models, the data undergoes the following preprocessing steps:
- **Missing Data Handling**: Any missing or null values are imputed or removed.
- **Date Formatting**: Ensures that the date column is correctly parsed and formatted as a datetime object for easier analysis.
- **Normalization/Scaling**: Some models (e.g., SVM) require data to be scaled to a standard range.

## Cryptocurrency Featured Data

In addition to the raw price data, the repository includes a **featured dataset** that contains engineered features derived from the raw price data. These features include technical indicators and statistical measures commonly used in financial analysis, which can help improve model performance.

### Files

- **Cryptocurrency_FeaturedData.csv**: CSV version of the dataset with additional engineered features like moving averages (MA), exponential moving averages (EMA), relative strength index (RSI), volatility measures, and log returns.
- **Cryptocurrency_FeaturedData.xlsx**: Excel version of the same dataset.

### Columns in the Featured Dataset

| Column Name         | Description                                                                 |
|---------------------|-----------------------------------------------------------------------------|
| **Name**            | Name of the cryptocurrency (e.g., Bitcoin, Ethereum)                        |
| **Symbol**          | Symbol representing the cryptocurrency (e.g., BTC, ETH)                     |
| **Date**            | Date of the record                                                           |
| **High**            | The highest price of the cryptocurrency during the given time period        |
| **Low**             | The lowest price of the cryptocurrency during the given time period         |
| **Open**            | The opening price of the cryptocurrency on the given date                    |
| **Close**           | The closing price of the cryptocurrency on the given date                    |
| **Volume**          | Total trading volume of the cryptocurrency during the time period           |
| **Marketcap**       | Market capitalization of the cryptocurrency during the time period         |
| **Daily_Return**    | Daily return based on price changes from the previous day                   |
| **MA_7**            | 7-day moving average of the cryptocurrency price                            |
| **MA_30**           | 30-day moving average of the cryptocurrency price                           |
| **MA_90**           | 90-day moving average of the cryptocurrency price                           |
| **Price_Range**     | Difference between the high and low price for the day                       |
| **Log_Return**      | Logarithmic return of the cryptocurrency price for each time period         |
| **Volatility_30d**  | 30-day rolling volatility of the cryptocurrency price                        |
| **RSI_14**          | Relative Strength Index (14-day)                                             |
| **EMA_7**           | 7-day Exponential Moving Average (EMA) of the cryptocurrency price          |
| **EMA_21**          | 21-day Exponential Moving Average (EMA) of the cryptocurrency price         |
| **Volume_MA_7**     | 7-day moving average of the trading volume of the cryptocurrency             |
| **Volume_MA_30**    | 30-day moving average of the trading volume of the cryptocurrency            |
| **VWAP**            | Volume Weighted Average Price of the cryptocurrency                         |
| **Rolling_Std**     | 30-day rolling standard deviation of the cryptocurrency price               |
| **Cumulative_Return**| Cumulative return of the cryptocurrency over the entire time period        |

### Purpose of the Featured Data

The engineered features can be used for:
- Predictive modeling of cryptocurrency prices.
- Volatility and trend analysis.
- Trading strategy development and backtesting.

## Installation

To get started with the project, you need to clone the repository and install the required dependencies.

### Steps to Install:
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Vishnugnath/Capstone-project-Crypto-currency-analysis.git
   ```

2. **Install Required Libraries**:
   This project uses several Python libraries such as `pandas`, `numpy`, `matplotlib`, `sklearn`, and `statsmodels`. Install them using the `requirements.txt` file:
   ```bash
   pip install -r requirements.txt
   ```

## File Structure

The repository is organized as follows:

```
/Capstone-project-Crypto-currency-analysis
├── /dataset
│   ├── coin_BinanceCoin.csv
│   ├── coin_Ethereum.csv
│   └── coin_Bitcoin.csv
├── /Jupyter Notebook (Python)
│   └── Crypto currency analysis.ipynb
├── /sql
│   └── PROJECT_SQL.sql
├── /Cryptocurrency_FeaturedData
│   ├── Cryptocurrency_FeaturedData.csv
│   └── Cryptocurrency_FeaturedData.xlsx
└── requirements.txt
```

## Usage

1. **Load the Data**:
   Open the `Crypto currency analysis.ipynb` notebook in Jupyter Notebook or Jupyter Lab.

2. **Preprocess the Data**:
   The notebook contains steps for loading and cleaning the data. These steps include handling missing values, converting date formats, and normalizing features.

3. **Exploratory Data Analysis (EDA)**:
   Visualize the trends, volatility, and correlation of different variables. The notebook contains several plots that illustrate the relationships between different features.

4. **Model Development**:
   The notebook includes sections for building and evaluating models. Different time series forecasting methods and machine learning algorithms (ARIMA, SVM, Random Forest, Exponential Smoothing) are applied.

5. **Model Evaluation**:
   Evaluate the models based on error metrics such as RMSE, MAE, and R-squared. The notebook also compares the performance of different models.

## Results

The results section in the Jupyter notebook summarizes the findings from the analysis:
- **Price Trends**: Insights into the price movements of Bitcoin, Ethereum, and Binance Coin.
- **Model Performance**: A comparison of the forecasting models and their accuracy.
- **Market Volatility**: Observations about the volatility and risk associated with each cryptocurrency.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
