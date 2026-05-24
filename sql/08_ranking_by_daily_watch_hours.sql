-- rank by daily_watch_hours - window function

select user_id, daily_watch_hours,
rank() over (order by daily_watch_hours desc) as daily_watch_rank
from marts.customer_intelligence limit 20;