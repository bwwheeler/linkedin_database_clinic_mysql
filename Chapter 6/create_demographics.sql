CREATE TABLE demographics AS
SELECT caea.age AS Age,
	ed_attainment AS Education,
    SUM(population) / total_pop_by_age.total_pop AS coefficient
FROM caea
JOIN (SELECT age, SUM(population) AS total_pop FROM caea GROUP BY age) AS total_pop_by_age
	ON caea.age = total_pop_by_age.age
GROUP BY Age, Education;