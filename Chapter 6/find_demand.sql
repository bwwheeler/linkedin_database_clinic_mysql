SELECT
    temp_pop.date_year AS 'Year',
    demographics.ed AS Education,
	CAST(SUM(temp_pop.total_pop * coefficient) AS UNSIGNED) as Demand
FROM
    (SELECT date_year, age, sum(population) as total_pop FROM pop_proj GROUP BY date_year, age) as temp_pop
        JOIN
    demographics ON demographics.age = CASE
			WHEN temp_pop.age < 18 THEN '00 to 17'
			WHEN temp_pop.age > 65 THEN '65 to 80+'
			ELSE '18 to 64'
		END
GROUP BY date_year, Education;
