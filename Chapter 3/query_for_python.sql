SELECT 
    a.Accident_Severity, v.vehicle_type
FROM
    accidents_2015 AS a
        JOIN
    2015_make_model AS m ON a.Accident_Index = m.Accident_Index
        JOIN
    vehicle_type AS v ON m.Vehicle_Type = v.vehicle_code
WHERE
    v.vehicle_type LIKE '%otorcycle%'
ORDER BY v.vehicle_type, a.Accident_Severity