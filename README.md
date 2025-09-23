# Financial Transactions Analysis: Preparation Through SQL Into an Interactive Tableau Story

## Project Overview

This project uses SQL queries in order to clean and manipulate data in order to create multiple tableau dashboards to uncover trends in customer transactions and fraud behaviors

Insights and Recommendations are provided on the following key areas:

  - Financial Transactions Analysis: Analysis of financial transctions over time
  - Card Attributes: Transactions filtered by different card types and brands
  - Fraud Window: Time of day in which fraud occurs most often

An interactive Tableau dashboard on financial transactions can be found here

An interactive Tableau dashbaord on fraud analysis can be found here

The SQL queries utilized to inspect and perform quality checks can be found [here](/Users/nartmachfj/Downloads/queries/joined_view_sql.sql)

The SQL queries utilized to clean, join and prepare data can be found here

Targeted SQL queries regarding various questions can be found here

## Data Structure and Initial Checks

The data is structured using 3 tables in the form of csv files, along with 2 json files:

<img width="2126" height="1236" alt="Image" src="https://github.com/user-attachments/assets/759ec4d3-e853-44e8-8f45-12a671571e42" />

## Executive Summary

After increasing from 2010 and hitting the peak transactions at 2020, the financial transactions took a decline in 2019 for all card brands. Key performance indicators have all shown decreases, with total transaction amount decreasing by a wide margin and amount per transaction along with amount of users decreasing slightly. Fraud analysis shows peak fraud hours to be between 10 and 1 on Sundays, with Wholesale Clubs attributing to large portion of fraud transactions. at The following sections will explore additional factors, along with hightley the key areas for improvement.

Below is the overview of the Tableau financial transaction dashboard. The entire interactive dashbord can be found [here](https://public.tableau.com/shared/BRFRQ38Z4?:display_count=n&:origin=viz_share_link)

<img width="1463" height="879" alt="image" src="https://github.com/user-attachments/assets/62397ac1-a6f7-42bb-8016-8ceef0eb8ec8" />



Below is the overview of the Tableau fraud analysis dashbaord. The entire interactive dashboard can be found here.

<img width="2926" height="1758" alt="image" src="https://github.com/user-attachments/assets/635dc07e-8b65-416d-9866-2ff04fb83497" />


### Financial Transaction Trends

- Financial transactions peaked in 2018, with 1394792 total transactions totaling to $59,627,318 being transacted.
- After 2018, revenue declined going into 2019, with all four card brands experiencing a drop in total transactions. Data has not been updated for following years, but this was the first time a decline was experienced for financial transaction records.
- For all years, most transactions were processed thorugh Mastercard and Visa, with Amex and Discover taking up a small percent of the total transactions. Mastercard held the top spot for all years, experiencing its peak at 754,077 transactions in 2018.


### Card Attributes

### Fraud Window

## Recommendations
