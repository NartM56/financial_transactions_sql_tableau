# Financial Transactions Analysis: Preparation Through SQL Into an Interactive Tableau Story

## Project Overview

This project uses SQL queries in order to clean and manipulate data in order to create multiple tableau dashboards to uncover trends in customer transactions and fraud behaviors

Insights and Recommendations are provided on the following key areas:

  - Financial Transactions Analysis: Analysis of financial transctions over time
  - Card Attributes: Transactions filtered by different card types and brands
  - Fraud Window: Time of day in which fraud occurs most often

An interactive Tableau dashboard on financial transactions can be found here

An interactive Tableau dashbaord on fraud analysis can be found here

The SQL queries utilized to clean, join and prepare data can be found [here](./joined_view_sql.sql)

Targeted SQL queries regarding various questions on financial transactions can be found [here](./analysis-queries.sql)

Targeted SQL queries regarding various questions on fraud analysis can be found here

## Data Structure and Initial Checks

The data is structured using 3 tables in the form of csv files, along with 2 json files:

<img width="2126" height="1236" alt="Image" src="https://github.com/user-attachments/assets/759ec4d3-e853-44e8-8f45-12a671571e42" />

## Executive Summary

After increasing from 2010 and hitting the peak transactions in 2018, the financial transactions took a decline in 2019 for all card brands. Key performance indicators have all shown decreases, with total transaction amount decreasing by a wide margin and amount per transaction along with amount of users decreasing slightly. Fraud analysis shows peak fraud hours to be between 10 and 1 on Sundays, with Wholesale Clubs attributing to large portion of fraud transactions. at The following sections will explore additional factors, along with higlighting the key areas for improvement.

Below is the overview of the Tableau financial transaction dashboard. The entire interactive dashbord can be found [here](https://public.tableau.com/shared/DCH2ZG7KC?:display_count=n&:origin=viz_share_link)

<img width="2512" height="1358" alt="image" src="https://github.com/user-attachments/assets/742f5c0c-6a77-476c-b54a-5e64fb91e1bc" />




Below is the overview of the Tableau fraud analysis dashbaord. The entire interactive dashboard can be found [here](https://public.tableau.com/views/Sep23FraudDashboard/FraudAnalysis?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link).

<img width="2940" height="1732" alt="image" src="https://github.com/user-attachments/assets/b38eb589-23da-4881-84f5-df9e6b0fba61" />



### Financial Transaction Trends

- Financial transactions peaked in 2018, with 1394792 total transactions totaling to $59,627,318 being transacted.
  
- After 2018, revenue declined going into 2019, with all four card brands experiencing a drop in total transactions. Data has not been updated for following years, but this was the first time a decline was experienced for financial transaction records.
  
- For all years, most transactions were processed thorugh Mastercard and Visa, with Amex and Discover taking up a small percent of the total transactions. Mastercard held the top spot for all years, experiencing its peak at 754,077 transactions in 2018.


### Card Attributes

- Analyzing overall transactions, we see Mastercard taking the lead over Visa, but looking only at credit cards, we see Visa outperforming Mastercard.
  
- Discover and Amex have not released a Debit Card, contributing to the big gap between these two payment issuers and Mastercard and Visa.
  
- Swipe Transaction usage drastically decreased starting in January 2015, with Mastercard experiencing an 80.2% drop, falling from 55,382 transactions in December 2014 to 10,956 transactions in January 2015 and it consistently staying around this value for the rest of the years. Visa experienced an 81.2% drop, Amex an 83.5% decrase and Discover encountering a 78.9% fall.
  
<img width="1240" height="508" alt="image" src="https://github.com/user-attachments/assets/ce18fe55-8595-4fdf-9493-a474aa8e9a1a" />


### Fraud Window
- Total of 13,332 fraud transactions throughout the years, with Department Stores being associated with 2,251 of these transactions, occupying 16.88% of all fraudulent transactions.
  
- Time period in which most fraud transactions occured were between 10 and 1 during Sunday, with Tuesday, Thurday and Friday also experiencing most of their fraud transactions during that time.
  
- Most fraud transactions from 2010 to 2015 were done through online transactions, with chip transactions taking over starting from 2016 until 2019. No online fraud transacions occured in 2017 and 2019.
  
- Starting from 2017, Italy has surprisingly had 3,061 total fraud transactions, since no fraud transactions occured from 2010 all the way until 2016. Italy has had 86.1% more fraud transactions than regular transactions, with 1,645 of them being counted as non-fraudulent and 3,061 as fraudulent.
  
- 85.2% of fraudulent transactions come from people with a yearly income of at most $60,000. By contrast, higher-income groups (> $60,000) account for only 14.8% of cases

## Recommendations
- **Shift Away From Swipe Transactions**: The sharp and sutained drop of swipe transcations starting in January 2015 indicates that payment has shifted toward contacless methods. Invest further in contacless payment methods and educate the consumers on the security benefits.
  
- **Adress Amex and Discover**: For Amex and Discover, focus on releasing a Debit card, which could massively contribute to their total gain and to the total transactions made using the payment issuers.
  
- **Treat Department Stores As A Dangerous Industry**: Enhance fraud monitoring by adding real-time monitoring systems that flag unusual transactions and provide training to staff on how to spot possible fraudulent transactions.
  
- **Fraud Protection During Peak Hours**: Look to assign extra security and fraud protection during peak fraud hours in order to be aware of the transactions and to catch them as fast as possible. Focus on also emphasizing risk of fraud toward merchants and consumers, leading them away from participating.
  
- **Investigate Cause Of The Sudden Onset In Italy**: Reevaluate the vulnerability in the systems, along with possibly introducing new fraud tactics and treating the country as a high risk market.
