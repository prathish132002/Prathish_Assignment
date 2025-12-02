-- Q1: Last booked room
SELECT *
FROM bookings
ORDER BY booked_on DESC
LIMIT 1;

-- Q2: Billing in Nov 2021
SELECT 
    b.booking_id,
    SUM(bc.quantity * i.rate) AS total_bill
FROM bookings b
JOIN booking_commercials bc ON b.booking_id = bc.booking_id
JOIN items i ON bc.item_id = i.item_id
WHERE strftime('%Y-%m', bc.ordered_on) = '2021-11'
GROUP BY b.booking_id;

-- Q3: Bills > 1000
SELECT booking_id, SUM(bc.quantity * i.rate) AS bill_amount
FROM booking_commercials bc
JOIN items i ON bc.item_id = i.item_id
GROUP BY booking_id
HAVING bill_amount > 1000;

-- Q4: Most/least ordered item per month
SELECT *
FROM (
    SELECT
        strftime('%Y-%m', ordered_on) AS month,
        item_id,
        SUM(quantity) AS total_qty,
        RANK() OVER (PARTITION BY month ORDER BY SUM(quantity) DESC) AS rnk_desc,
        RANK() OVER (PARTITION BY month ORDER BY SUM(quantity)) AS rnk_asc
    FROM booking_commercials
    GROUP BY month, item_id
)
WHERE rnk_desc = 1 OR rnk_asc = 1;

-- Q5: Second highest bill
SELECT *
FROM (
    SELECT 
        booking_id,
        SUM(bc.quantity * i.rate) AS bill_amount,
        DENSE_RANK() OVER (ORDER BY SUM(quantity * rate) DESC) AS rnk
    FROM booking_commercials bc
    JOIN items i ON bc.item_id = i.item_id
    GROUP BY booking_id
)
WHERE rnk = 2;
