-- churn rate by device used

select device_used, avg(daily_watch_hours) as avg_watch_hours, round(100.0 * sum(case when churn_status = 'yes' then 1 else 0 end) / count(*), 2) as churn_rate
from marts.customer_intelligence
group by device_used
order by churn_rate desc;