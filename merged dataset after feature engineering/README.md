# Cryptocurrency Featured Data

This repository contains the **Cryptocurrency_FeaturedData** dataset, which has been feature-engineered to assist with cryptocurrency analysis. The dataset includes various technical indicators and statistical measures to help in understanding the price trends and volatility of different cryptocurrencies.

## Dataset Overview

The dataset consists of historical data for various cryptocurrencies, including key price, volume, and technical indicator features that can be used for predictive modeling, analysis, and research.

### Files

- **Cryptocurrency_FeaturedData.csv**: CSV format version of the dataset with features like moving averages, volatility, RSI, EMA, etc.
- **Cryptocurrency_FeaturedData.xlsx**: Excel format version of the dataset.

### Columns

| Column Name         | Description                                                                 |
|---------------------|-----------------------------------------------------------------------------|
| **Name**            | Name of the cryptocurrency (e.g., Bitcoin, Ethereum)                        |
| **Symbol**          | Symbol of the cryptocurrency (e.g., BTC, ETH)                              |
| **High**            | The highest price of the cryptocurrency during the given time period        |
| **Low**             | The lowest price of the cryptocurrency during the given time period         |
| **Open**            | The price of the cryptocurrency at the beginning of the time period         |
| **Close**           | The price of the cryptocurrency at the end of the time period               |
| **Volume**          | The total trading volume of the cryptocurrency during the time period       |
| **Marketcap**       | Market capitalization of the cryptocurrency during the time period         |
| **Daily_Return**    | Daily return of the cryptocurrency calculated from the price changes       |
| **MA_7**            | 7-day moving average of the cryptocurrency price                           |
| **MA_30**           | 30-day moving average of the cryptocurrency price                          |
| **MA_90**           | 90-day moving average of the cryptocurrency price                          |
| **Price_Range**     | Difference between high and low price for the day                          |
| **Log_Return**      | Logarithmic return of the cryptocurrency price for each time period        |
| **Volatility_30d**  | 30-day rolling volatility of the cryptocurrency price                       |
| **RSI_14**          | Relative Strength Index (14-day) of the cryptocurrency                      |
| **EMA_7**           | Exponential Moving Average (7-day) of the cryptocurrency price             |
| **EMA_21**          | Exponential Moving Average (21-day) of the cryptocurrency price            |
| **Volume_MA_7**     | 7-day moving average of the trading volume of the cryptocurrency            |
| **Volume_MA_30**    | 30-day moving average of the trading volume of the cryptocurrency           |
| **VWAP**            | Volume Weighted Average Price of the cryptocurrency                        |
| **Rolling_Std**     | 30-day rolling standard deviation of the cryptocurrency price              |
| **Cumulative_Return**| Cumulative return of the cryptocurrency over the time period               |

### Purpose

The dataset is designed to provide insights into the behavior of cryptocurrency prices and volume, along with technical indicators that are commonly used in financial analysis and trading strategies. These features can be used for:
- Predictive modeling of cryptocurrency prices
- Volatility analysis
- Risk management
- Trading strategy development

### Usage

The dataset can be used for various types of analysis and machine learning tasks including, but not limited to:
- Time series forecasting
- Price prediction models using machine learning algorithms
- Backtesting trading strategies
- Understanding market trends

### How to Load the Data

You can load the dataset into your preferred environment for analysis. Here’s an example using **Python** with **Pandas**:

```python
import pandas as pd

# Load CSV file
data = pd.read_csv("path/to/Cryptocurrency_FeaturedData.csv")

# Load Excel file
# data = pd.read_excel("path/to/Cryptocurrency_FeaturedData.xlsx")
```

### Contributing

Contributions to improve the dataset or add new features are welcome. Please fork the repository and submit a pull request with your proposed changes.

### License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
