-- Q1: Revenue by sales channel
SELECT sales_channel, SUM(amount) AS total_revenue
FROM clinic_sales
GROUP BY sales_channel;

-- Q3: Monthly Profit/Loss
WITH revenue AS (
    SELECT strftime('%Y-%m', sale_date) AS month, SUM(amount) AS rev
    FROM clinic_sales
    GROUP BY month
),
expense AS (
    SELECT month, expense_amount
    FROM expenses
)
SELECT 
    r.month,
    r.rev AS total_revenue,
    e.expense_amount AS total_expense,
    (r.rev - e.expense_amount) AS profit_or_loss
FROM revenue r
JOIN expense e ON r.month = e.month;
