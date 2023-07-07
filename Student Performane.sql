use students;
---------------------------------------------------------------------------------------- 
select gender, math_score, science_score, business_score
from sp
where gender = "female"and
math_score > 80 and  science_score > 80 and business_score >80
limit 105;
---------------------------------------------------------------------------------------- 

select gender, math_score, science_score, business_score
from sp
where gender = "male" and
math_score > 70 and  science_score > 70 and business_score >70
limit 105;
---------------------------------------------------------------------------------------- 
select gender,round(avg(math_score),2)
from sp
group by gender;
---------------------------------------------------------------------------------------- 
select gender,round(avg(science_score),2)
from sp
group by gender;
---------------------------------------------------------------------------------------- 
select gender,round(avg(business_score),2)
from sp
group by gender;
---------------------------------------------------------------------------------------- 
SELECT Race, Gender, COUNT(*) AS Count
FROM sp
GROUP BY Race, Gender;
---------------------------------------------------------------------------------------- 
select gender,count(gender)
from sp
group by gender;


----------------------------------------------------------------------------------------
  SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
----------------------------------------------------------------------------------------
select trim(parental_level_of_education)
from sp;
---------------------------------------------------------------------------------------- 
select ltrim(parental_level_of_education)
from sp;

update sp set parental_level_of_education = ltrim(parental_level_of_education);

----------------------------------------------------------------------------------------


select parental_level_of_education, test_preparation_course,
 sum(math_score) , sum(science_score) ,sum(business_score) 
from sp
group by parental_level_of_education, test_preparation_course  
order by parental_level_of_education desc ;
---------------------------------------------------------------------------------------- 
select parental_level_of_education, max(math_score)
from sp
group by parental_level_of_education;
---------------------------------------------------------------------------------------- 
select parental_level_of_education, max(business_score)
from sp
group by parental_level_of_education;
---------------------------------------------------------------------------------------- 
select parental_level_of_education, max(science_score)
from sp
group by parental_level_of_education;
---------------------------------------------------------------------------------------- 
SELECT COUNT(*) AS female_count
FROM sp
WHERE gender = 'female' AND business_score BETWEEN 70 AND 100;
---------------------------------------------------------------------------------------- 
select count(distinct parental_level_of_education)
from sp;
---------------------------------------------------------------------------------------- 
select count(gender)
from sp
where gender= "female" and math_score > 90;
---------------------------------------------------------------------------------------- 
select math_score + science_score + Business_score
from sp;
---------------------------------------------------------------------------------------- 
select math_score , science_score , Business_score
from sp
where math_score =100
and science_score = 100
and Business_score = 100;
---------------------------------------------------------------------------------------- 
select Business_score
from sp
where 
 Business_score = 100;
---------------------------------------------------------------------------------------- 
select Business_score, science_score
from sp
where science_score = 100
and Business_score = 100;
---------------------------------------------------------------------------------------- 
select science_score
from sp
where science_score = 100;
---------------------------------------------------------------------------------------- 
select math_score , science_score , Business_score,
 case 
 when  math_score < 40 then "fail"
else "pass"
end as "Pass_or_Fail 1",
case
when  science_score < 40 then "fail"
else "pass"
end as "Pass_or_Fail 2",
case
when  business_score < 40 then "fail"
else "pass"
end as "Pass_or_Fail  3"
from sp;
----------------------------------------------------------------------------------------

select (math_score + science_score+  Business_score) as total,
case when (math_score + science_score+  Business_score)  < 99 then "fail"
else "pass"
end as "final_marks"
from sp;

----------------------------------------------------------------------------------------


