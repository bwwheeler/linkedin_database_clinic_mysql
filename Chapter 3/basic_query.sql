SELECT 
	v.vtype AS 'Vehicle Type'
    AVG(a.Accident_Severity) AS 'Average Severity',
    COUNT(a.accident_severity) AS 'Number of Accidents',
FROM
    accidents_2015 AS a
        JOIN
    vehicles_2015 AS m ON a.Accident_Index = m.Accident_Index
        JOIN
    vehicle_type AS v ON m.Vehicle_Type = v.vcode
WHERE
    v.vehicle_type LIKE '%otorcycle%'
GROUP BY v.vehicle_type
