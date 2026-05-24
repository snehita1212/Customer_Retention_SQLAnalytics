select satisfaction_score,
round(100.0 * sum(case when churn_status = 'yes' then 1 else 0 end) / count(*), 2) as churn_rate
from marts.customer_intelligence
group by satisfaction_score
order by satisfaction_score;