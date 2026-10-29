# Digital Payment Failure and Reversal Analysis

## About Project
Digital payments don’t always go smoothly — some fail, and some get reversed.  
This project explores a synthetic dataset of 10,000 transactions to understand **failure rates, reversal patterns, and the factors behind them.**  

It’s built as a beginner‑friendly SQL analysis, answering practical business questions about transaction status, card type, category, authentication method, location, and monthly trends.

## Goals
- Measure how often transactions fail or get reversed.
- Compare failures and reversals across card types and categories.
- Identify which authentication methods and locations see the most issues.
- Track monthly changes in transaction status.

## Tools used
- **SQL (MySQL)**: basic queries with `SELECT`, `WHERE`, `GROUP BY`, `CASE`, etc.
- **Dataset**: synthetic sample from Hugging Face (`Tichies/card-fraud`).
- **Files included**:
  - `saske.csv`  > original file
  - `data/payment_transactions.csv` > cleaned dataset  
  - `Digital Payment Failure Analysis.sql` > analysis queries  
  - `README.md` 

## Key findings
- Out of 10,000 transactions: **3,384 failed**, **3,330 successful**, **3,286 reversed**.  
- Failure rate: **33.84%** | Reversal rate: **32.86%**.  
- **Transfers** had the most failures (895), while **Payments** had the most reversals (860).  
- **Password authentication** showed the highest failure count (1,153).  
- **Andijan** recorded the most failed transactions among locations (319).  

Note: Since the dataset is synthetic, these are practice insights — not real banking benchmarks.

## 🚀 How to run
1. Open MySQL Workbench.  
2. Run the table setup script.  
3. Import `payment_transactions.csv` into the database.  
4. Confirm 10,000 rows were loaded.  
5. Run the queries in `Digital Payment Failure Analysis.sql` one by one.  

## Portfolio skills demonstrated
- Creating and populating SQL tables.  
- Filtering and grouping transaction records.  
- Calculating totals, averages, and percentages.  
- Summarizing operational data into business insights.  
- Turning query results into clear findings.  

##  Limitations
- Dataset is synthetic/educational, not real bank data.  
- Reversal reasons and processing times are not included.  
- Analysis shows associations and frequencies, not root causes. 
