--creation of marts.customer_segments

create view marts.customer_segments as 
select user_id, monthly_income, engagement_rate, daily_watch_hours,
case when engagement_rate >=8 and daily_watch_hours >= 4 then 'power_user'
when engagement_rate >= 6 then 'active_user'
when engagement_rate >= 4 then 'moderate_user'
else 'passive_user'
end as engagement_segment
from marts.customer_intelligence;