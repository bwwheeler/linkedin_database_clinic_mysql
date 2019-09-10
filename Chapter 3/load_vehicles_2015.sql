/* You will need to replace the file path below with the path to the data source you downloaded for this chapter.*/

LOAD DATA LOCAL INFILE 'c:\\Users\\bradwheeler\\Desktop\\Vehicles_2015.csv' INTO TABLE vehicles_2015 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES
(@col1, @dummy, @dummy, @col2, @dummy, @dummy, @dummy, @dummy, @dummy, @dummy, @dummy, @dummy, @dummy, @dummy, @dummy, @dummy, @dummy, @dummy, @dummy, @dummy, @dummy, @dummy, @dummy, @dummy) 
SET accident_index=@col1, vehicle_type=@col2;
