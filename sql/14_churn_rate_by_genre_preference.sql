-- churn rate by genre preference

select genre_preference, round(100.0 * sum(case when churn_status = 'yes' then 1 else 0 end) / count(*), 2) as churn_rate
from marts.customer_intelligence
group by genre_preference
order by churn_rate desc;