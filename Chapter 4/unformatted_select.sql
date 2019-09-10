SELECT County, Gender, sum(Population)
FROM pop_proj
WHERE date_year = 2014
GROUP BY County, Gender
ORDER BY County;