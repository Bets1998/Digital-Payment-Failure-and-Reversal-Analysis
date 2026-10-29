# Digital Payment Failure and Reversal Analysis

## Project overview

This beginner-level SQL project studies failed and reversed digital payment transactions. It answers simple business questions about transaction status, value, card type, category, authentication method, location and monthly trends.

## Dataset

- Public source: [Tichies/card-fraud on Hugging Face](https://huggingface.co/datasets/Tichies/card-fraud)
- Original file: `saske.csv` (100,000 rows)
- Project file: a reproducible 10,000-row sample selected with `random_state=42`
- Important note: the public dataset appears to be synthetic/educational, not real customer banking records.
- No personal names are included in this project copy.

## Files

```text
data/payment_transactions.csv   Clean project dataset
01_create_table.sql             Database and table setup
02_analysis_queries.sql         12 beginner SQL questions
results/status_summary.csv      Quick result check
README.md                       Project documentation
```

## SQL level

L1 / beginner: `SELECT`, `WHERE`, `COUNT`, `SUM`, `AVG`, `ROUND`, `GROUP BY`, `ORDER BY`, `LIMIT`, `CASE`, and `IN`. No joins, CTEs, window functions, stored procedures or advanced SQL are used.

## Questions answered

1. How many transactions are in the sample?
2. How are transaction count and value split by status?
3. What percentage of transactions failed?
4. What percentage were reversed?
5. Which card types show the most failures and reversals?
6. Which transaction categories have the most failures?
7. Which categories have the most reversals?
8. Which authentication methods appear most often in failures?
9. Which locations have the most failed transactions?
10. How do statuses change by month?
11. How are fraud flags distributed among failed and reversed transactions?

## Key findings from the included sample

- The sample contains 10,000 transactions: 3,384 failed, 3,330 successful and 3,286 reversed.
- The failure rate is 33.84%; the reversal rate is 32.86%.
- Transfers have the most failures (895), while payments have the most reversals (860).
- Password-authenticated transactions contribute the highest failure count (1,153).
- Andijan records the most failed transactions among the listed locations (319).

Because the classes are almost evenly distributed, these results should be treated as practice findings from a synthetic dataset, not as real banking benchmarks.

## How to run

1. Open MySQL Workbench.
2. Run `01_create_table.sql`.
3. Import `data/payment_transactions.csv` into the `payment_transactions` table with the Table Data Import Wizard.
4. Confirm that 10,000 rows were imported.
5. Run `02_analysis_queries.sql` one query at a time.

## Portfolio skills demonstrated

- Creating a simple SQL table
- Filtering transaction records
- Calculating totals, averages and percentages
- Grouping operational data into useful business summaries
- Turning query results into concise findings

## Limitations

- The source is educational and should not be presented as real bank data.
- A `Reversed` status is available, but reversal processing time and reversal reason are not included.
- The project analyzes association and frequency only; it does not prove why a transaction failed or was reversed.

## Author

Betsy Varghese
