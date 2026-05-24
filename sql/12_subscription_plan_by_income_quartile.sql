-- income quartile and subscription plan 

select income_quartile, subscription_plan, count(*) as number_of_customers
from (select user_id, subscription_plan, ntile(4) over (order by monthly_income) as income_quartile
      from marts.customer_intelligence) table_quartile
group by income_quartile, subscription_plan
order by income_quartile;