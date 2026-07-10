SELECT * FROM customers;

SELECT customerid,
       gender,
       tenure
FROM customers;

SELECT *
FROM customers
WHERE churn='Yes';

SELECT *
FROM customers
ORDER BY monthlycharges DESC;

SELECT *
FROM customers
LIMIT 10;

SELECT churn,
COUNT(*) AS total_customers
FROM customers
GROUP BY churn;

SELECT contract,
AVG(monthlycharges)
FROM customers
GROUP BY contract;

SELECT paymentmethod,
COUNT(*)
FROM customers
GROUP BY paymentmethod;

SELECT internetservice,
AVG(tenure)
FROM customers
GROUP BY internetservice;

SELECT contract,
COUNT(*)
FROM customers
GROUP BY contract
HAVING COUNT(*)>500;

SELECT MAX(monthlycharges)
FROM customers;

SELECT MIN(monthlycharges)
FROM customers;

SELECT AVG(monthlycharges)
FROM customers;

SELECT SUM(monthlycharges)
FROM customers;

SELECT COUNT(*)
FROM customers;

/*subquerey*/
SELECT *
FROM customers
WHERE monthlycharges >
(
SELECT AVG(monthlycharges)
FROM customers
);

/*CTE*/
WITH churn_customers AS
(
SELECT *
FROM customers
WHERE churn='Yes'
)

SELECT *
FROM churn_customers;

/*window function*/
SELECT customerid,
monthlycharges,

ROW_NUMBER()
OVER(ORDER BY monthlycharges DESC)
AS Rank

FROM customers;

/*Rank*/
SELECT customerid,
monthlycharges,

RANK()
OVER(ORDER BY monthlycharges DESC)

FROM customers;

/*LAG*/
SELECT customerid,

monthlycharges,

LAG(monthlycharges)
OVER(ORDER BY tenure)

FROM customers;

/*LEAD*/
SELECT customerid,

monthlycharges,

LEAD(monthlycharges)
OVER(ORDER BY tenure)

FROM customers;

/*Customers who churned*/
SELECT COUNT(*)
FROM customers
WHERE churn='Yes';

/*Average tenure*/
SELECT AVG(tenure)
FROM customers;

/*Highest monthly charge*/
SELECT customerid,
monthlycharges

FROM customers

ORDER BY monthlycharges DESC

LIMIT 10;


/*Payment methods*/
SELECT paymentmethod,

COUNT(*)

FROM customers

GROUP BY paymentmethod;

/*Internet services*/
SELECT internetservice,

COUNT(*)

FROM customers

GROUP BY internetservice;



SELECT paymentmethod,
COUNT(*)

FROM customers

GROUP BY paymentmethod;