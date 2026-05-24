-- churn rate by engagement
select engagement_rate, round(100.0 * sum(case when churn_status = 'yes' then 1 else 0 end) / count(*), 2) as churn_rate
from marts.customer_intelligence
group by engagement_rate
order by engagement_rate;