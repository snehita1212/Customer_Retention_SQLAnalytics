-- finding monthly regional revenue by assigning int value to each type of subscription plan
-- basic = 2, standard = 6, premium = 10

select region, sum(case 
  when subscription_plan = 'basic' then 2 
  when subscription_plan = 'standard' then 6
  else 10 end) as estimated_monthly_rate
from marts.customer_intelligence
group by region
order by estimated_monthly_rate desc;