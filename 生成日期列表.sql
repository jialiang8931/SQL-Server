WITH 
	create_year_month_list(_datetime) AS (
		SELECT CAST('2020-01-01' AS DATETIME)
		UNION ALL
		SELECT 
			DATEADD(MONTH, 1, _datetime) 
		FROM create_year_month_list 
		WHERE _datetime < CAST('2022-01-01' AS DATETIME)
	),

	year_month_list AS (
		SELECT 
			YEAR(_datetime) AS year,
			MONTH(_datetime) AS month
		FROM create_year_month_list
	
	)
SELECT * FROM year_month_list;
