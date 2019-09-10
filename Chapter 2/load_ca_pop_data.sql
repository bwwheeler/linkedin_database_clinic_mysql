/* You will need to replace the file path below with the path to the data source you downloaded for this chapter.*/

LOAD DATA LOCAL INFILE 'c:\\Users\\bradwheeler\\Desktop\\CA_DRU_proj_2010-2060.csv' INTO TABLE pop_proj 
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES;