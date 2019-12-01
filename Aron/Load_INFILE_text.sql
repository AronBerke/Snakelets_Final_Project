USE CDC_project;

#Delete rows in the head table (2018)
TRUNCATE TABLE cdc_2018_full;

#load 2018 file
LOAD DATA LOCAL INFILE '/private/tmp/CSV2018_full.csv'
INTO TABLE cdc_2018_full
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES ;

#Delete rows in the head table (2017)
TRUNCATE TABLE cdc_2017_full;

#load 2017 file
LOAD DATA LOCAL INFILE '/private/tmp/CSV2017.csv'
INTO TABLE cdc_2017_full
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES ;

