--churn rate per type of subscription plan

select subscription_plan, count(*) as total_customers,
sum(case when churn_status = 'yes' then 1 else 0 end) as returning_customers,
round(100.0 * sum(case when churn_status = 'yes' then 1 else 0 end) / count(*), 2) as return_rate_percent
from marts.customer_intelligence
group by subscription_plan
order by return_rate_percent desc;