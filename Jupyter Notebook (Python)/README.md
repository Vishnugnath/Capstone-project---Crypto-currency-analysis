# Capstone Project: Cryptocurrency Analysis

This project involves a detailed exploratory and predictive analysis of three popular cryptocurrencies: Bitcoin, Ethereum, and Binance Coin. The project includes data preprocessing, exploratory data analysis (EDA), and predictive modeling using ARIMA, Support Vector Machines (SVM), Random Forest, and Exponential Smoothing.

## Table of Contents
- [Project Overview](#project-overview)
- [Dataset Information](#dataset-information)
- [Installation](#installation)
- [Files](#files)
- [Usage](#usage)
- [Results](#results)
- [License](#license)

## Project Overview
The objective of this project is to analyze historical price data for Bitcoin, Ethereum, and Binance Coin. This analysis includes EDA and advanced time series modeling to predict future prices, evaluate trends, and understand volatility in the cryptocurrency market. The project serves as a comprehensive case study in financial data analysis.

## Dataset Information
The dataset includes historical price information for three cryptocurrencies:
- **Bitcoin** - `coin_Bitcoin.csv`
- **Ethereum** - `coin_Ethereum.csv`
- **Binance Coin** - `coin_BinanceCoin.csv`

Each dataset contains the following columns:
- **Date**: Date of record
- **Open**: Opening price
- **High**: Highest price during the day
- **Low**: Lowest price during the day
- **Close**: Closing price
- **Adj Close**: Adjusted closing price
- **Volume**: Trading volume

### Location
Datasets are located in the [`/dataset`](https://github.com/Vishnugnath/Capstone-project-Crypto-currency-analysis/tree/main/dataset) directory.

## Installation
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Vishnugnath/Capstone-project-Crypto-currency-analysis.git
   ```
2. **Install Required Libraries**:
   Install dependencies as listed in the `requirements.txt` file:
   ```bash
   pip install -r requirements.txt
   ```

## Files
- **Dataset**: Historical data files are located in the `/dataset` directory.
- **Jupyter Notebook**: The main analysis and modeling are performed in the [Crypto currency analysis.ipynb](https://github.com/Vishnugnath/Capstone-project-Crypto-currency-analysis/tree/main/Jupyter%20Notebook%20(Python)) file.
- **SQL Scripts**: SQL scripts for data handling are in the `/sql` directory.

## Usage
1. Open the `Crypto currency analysis.ipynb` notebook in Jupyter.
2. Run each cell step-by-step to:
   - Load and preprocess data.
   - Conduct Exploratory Data Analysis (EDA).
   - Build and evaluate time series forecasting models including ARIMA, SVM, Random Forest, and Exponential Smoothing.

## Results
Key insights and model performance summaries are available within the notebook. The results highlight trends, volatility, and forecasted prices for each cryptocurrency.

## License
This project is licensed under the MIT License.
