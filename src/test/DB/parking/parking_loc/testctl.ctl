options(skip =1)  
load data
infile 'C:\dbparking\parking_loc\parkingloc.csv'  
append   
into table parking_loc  
fields terminated by ','
trailing nullcols
(
 parking_code
,parking_name
,addr
,lat
,lng
,parking_type
,parking_type_nm
,operation_rule
,operation_rule_nm
,tel
)