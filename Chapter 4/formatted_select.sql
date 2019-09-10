SELECT pop_proj.county, sum(pop_proj.Population) AS Male, femPop.Female
FROM(
	SELECT county, sum(population) AS Female
	FROM pop_proj
	WHERE date_year = 2014 AND gender = 'Female'
    GROUP BY county
) AS femPop
JOIN pop_proj ON femPop.county = pop_proj.county
WHERE (pop_proj.date_year = 2014) AND (pop_proj.gender = 'Male')
GROUP BY pop_proj.County
ORDER BY pop_proj.County;