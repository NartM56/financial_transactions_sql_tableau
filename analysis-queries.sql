-- 1) Create the years as strings
WITH years AS (
	SELECT merchant_state, CAST(substr(amount, 2) AS REAL) AS true_amount, LEFT(CAST(date AS VARCHAR), 4) AS year_of_transaction
	FROM transactions
)
--  find the amount transacted each year
SELECT year_of_transaction, SUM(true_amount) AS yearly_amount
FROM years
GROUP BY year_of_transaction
ORDER BY year_of_transaction ASC;

-- 2) Top 10 clients who spent the most
SELECT client_id, SUM(true_amount) AS total_amount_spent
FROM (
	SELECT client_id, CAST(substr(amount, 2) AS REAL) AS true_amount
	FROM transactions
	 ) AS t
GROUP BY client_id
ORDER BY total_amount_spent DESC
LIMIT 10;

-- 3) Find running total of transaction amount for top 10 customers by amount transacted
SELECT client_id, 
		transaction_id, 
		date, 
		SUM(amount) OVER(
				PARTITION BY client_id 
				ORDER BY date ASC 
				ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
		) AS current_total_spend
FROM joined
WHERE client_id IN (SELECT client_id
					FROM joined
					GROUP BY client_id
					ORDER BY SUM(AMOUNT) DESC
					LIMIT 10);

-- 4) Subquery to find states and amount for each transaction
WITH states AS (
	SELECT merchant_state, CAST(substr(amount, 2) AS REAL) AS true_amount
	FROM transactions
)
-- Get amount of transactions per state and amount per transaction in each state
SELECT merchant_state, COUNT(*) AS transaction_per_state, SUM(true_amount) AS amount_per_state
, ROUND(SUM(true_amount)::numeric / COUNT(*), 2) AS amount_per_transaction
FROM states
GROUP BY merchant_state
ORDER BY amount_per_transaction DESC


					
