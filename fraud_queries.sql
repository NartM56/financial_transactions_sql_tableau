-- 1) All Fraud Transactions
SELECT transaction_id, client_id, card_id, merchant_city, industry, is_fraud
FROM joined
WHERE is_fraud LIKE 'Yes';

-- 2) Most Fraud by Industry and State
SELECT merchant_state, industry, SUM(amount) AS total_fraud_amount
FROM JOINED
WHERE is_fraud LIKE 'Yes' AND merchant_state <> ''
GROUP BY merchant_state, industry
ORDER BY SUM(AMOUNT) DESC;

-- 3) Group Transactions By Amount
WITH percentiles AS (
	SELECT percentile_disc(0.33) WITHIN GROUP (ORDER BY amount) AS low_bound, 
	percentile_disc(0.66) WITHIN GROUP (ORDER BY amount) AS high_bound
	FROM joined
	WHERE is_fraud LIKE 'Yes'
), sections AS (SELECT CASE WHEN amount < 34.04 THEN 'Low'
				  WHEN 34.04 <= amount AND amount <= 112.94 THEN 'Medium'
				  ELSE 'High' END  AS section
				FROM joined
				WHERE is_fraud LIKE 'Yes')
SELECT SECTION, COUNT(*) AS fraud_count
FROM sections
GROUP BY SECTION;

--4) Rank of Transactions Per Client for the 5 most fraudulent customer

SELECT client_id, amount, 
	RANK() OVER(PARTITION BY client_id ORDER BY amount DESC) AS rank_for_client
FROM joined
WHERE is_fraud LIKE 'Yes' AND 
	client_id IN (SELECT client_id
				  FROM joined
				  WHERE is_fraud LIKE 'Yes'	
				  GROUP BY client_id
				  ORDER BY SUM(amount) DESC
				  LIMIT 5)