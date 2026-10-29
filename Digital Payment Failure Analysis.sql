USE payment_analysis;

# 1. Preview the data
SELECT * FROM payment_transactions LIMIT 10;

# 2. Count all transactions
SELECT COUNT(*) AS total_transactions FROM payment_transactions;

# 3. Transaction count and value by status
SELECT transaction_status,
	   COUNT(*) AS transaction_count,
       ROUND(SUM(transaction_amount), 2) AS total_amount,
       ROUND(AVG(transaction_amount), 2) AS average_amount
FROM payment_transactions
GROUP BY transaction_status
ORDER BY transaction_count DESC;

# 4. Failure percentage
SELECT ROUND(100.0 * SUM(CASE WHEN transaction_status = 'Failed' THEN 1 ELSE 0 END)/ COUNT(*), 2) AS failure_percentage
FROM payment_transactions;

# 5. Reversal percentage
SELECT ROUND( 100.0 * SUM(CASE WHEN transaction_status = 'Reversed' THEN 1 ELSE 0 END) / COUNT(*), 2) AS reversal_percentage
FROM payment_transactions;

# 6. Status by card type
SELECT card_type, transaction_status,
       COUNT(*) AS transaction_count
FROM payment_transactions
GROUP BY card_type, transaction_status
ORDER BY card_type, transaction_count DESC;

# 7. Categories with the most failed transactions
SELECT transaction_category,
       COUNT(*) AS failed_transactions,
       ROUND(SUM(transaction_amount), 2) AS failed_amount
FROM payment_transactions
WHERE transaction_status = 'Failed'
GROUP BY transaction_category
ORDER BY failed_transactions DESC;

# 8. Categories with the most reversals
SELECT transaction_category,
       COUNT(*) AS reversed_transactions,
       ROUND(SUM(transaction_amount), 2) AS reversed_amount
FROM payment_transactions
WHERE transaction_status = 'Reversed'
GROUP BY transaction_category
ORDER BY reversed_transactions DESC;

# 9. Failure count by authentication method
SELECT authentication_method,
       COUNT(*) AS failed_transactions
FROM payment_transactions
WHERE transaction_status = 'Failed'
GROUP BY authentication_method
ORDER BY failed_transactions DESC;

# 10. Locations with the most failures
SELECT transaction_location,
       COUNT(*) AS failed_transactions
FROM payment_transactions
WHERE transaction_status = 'Failed'
GROUP BY transaction_location
ORDER BY failed_transactions DESC
LIMIT 5;

# 11. Monthly status trend
SELECT `year_month`,
        transaction_status,
        COUNT(*) AS transaction_count
FROM payment_transactions
GROUP BY `year_month`, transaction_status
ORDER BY `year_month`, transaction_status;

# 12. Fraud flags among failed and reversed transactions
SELECT transaction_status, isfraud,
       COUNT(*) AS transaction_count
FROM payment_transactions
WHERE transaction_status IN ('Failed', 'Reversed')
GROUP BY transaction_status, isfraud
ORDER BY transaction_status, isfraud;
