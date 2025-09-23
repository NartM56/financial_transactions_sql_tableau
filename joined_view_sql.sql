CREATE VIEW joined AS
WITH codes_adjusted AS (
SELECT id AS mcc, industry
FROM codes
), fraud_adjusted AS (
SELECT id AS transaction_id, is_fraud
FROM frauds
), merged AS (
SELECT t.id AS transaction_id, client_id, date, card_id, CAST(substr(amount,2) AS REAL) AS amount, merchant_id, merchant_city, merchant_state, current_age, retirement_age, birth_year, birth_month, per_capita_income, mcc, errors, yearly_income, use_chip, latitude, longitude
FROM transactions AS t
LEFT JOIN users AS u
ON t.client_id = u.id
), join1 AS (
SELECT transaction_id, m.client_id, date, card_id, amount, merchant_id, merchant_city, merchant_state, current_age, retirement_age, birth_year, birth_month, per_capita_income, card_brand, card_type, card_number, expires, credit_limit, mcc, errors, yearly_income, use_chip, latitude, longitude
FROM merged AS m
LEFT JOIN cards AS c
ON m.card_id = c.id
)
SELECT *
FROM join1
LEFT JOIN codes_adjusted
USING(mcc)
LEFT  JOIN fraud_adjusted
USING(transaction_id)