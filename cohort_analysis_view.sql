-- public.cohort_analysis source

CREATE OR REPLACE
VIEW public.cohort_analysis
AS WITH customer_revenue AS (
	SELECT
		s.customerkey,
		s.orderdate,
		SUM(s.quantity::double PRECISION * s.netprice * s.exchangerate) AS total_net_revenue,
		COUNT(s.orderkey) AS num_orders,
		MAX(c.countryfull::text) AS countryfull,
		MAX(c.age) AS age,
		MAX(c.givenname::text) AS givenname,
		MAX(c.surname::text) AS surname
	FROM
		sales s
	JOIN customer c ON
		c.customerkey = s.customerkey
	GROUP BY
		s.customerkey,
		s.orderdate
)
 SELECT
	customerkey,
	orderdate,
	total_net_revenue,
	num_orders,
	countryfull,
	age,
	CONCAT(TRIM(BOTH FROM givenname), ' ', TRIM(BOTH FROM surname)) AS full_name,
	MIN(orderdate) OVER (
		PARTITION BY customerkey
	) AS first_purchase_date,
	EXTRACT(YEAR FROM MIN(orderdate) OVER (PARTITION BY customerkey)) AS cohort_year
FROM
	customer_revenue cr;