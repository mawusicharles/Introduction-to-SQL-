-- Databricks notebook source
show tables;

-- COMMAND ----------

select * from iris_csv limit (5)

-- COMMAND ----------

select Species,  avg(Sepal_Length) as Mean from iris_csv
group by Species
order by Mean asc;


-- COMMAND ----------

select Species, count(1) as sample from iris_csv 
group by Species 
order by sample desc;

-- COMMAND ----------

select Species, max(Sepal_Length) as Length, max(Sepal_Width) as Width
from iris_csv
group by Species;

-- COMMAND ----------


