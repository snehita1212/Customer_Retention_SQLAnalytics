create table marts.customer_intelligence as 
select 
u.user_id, u.age, u.region, u.monthly_income,
s.subscription_plan, s.subscription_length_months, s.churn_status, s.promotional_offers_used, s.profiles_created,
e.daily_watch_hours, e.engagement_rate, e.satisfaction_score, e.device_used, e.genre_preference,
b.payment_status,
sp.support_queries_logged
from analytics.users u join analytics.subscriptions s on u.user_id = s.user_id
join analytics.engagement e on s.user_id = e.user_id
join analytics.billing b on e.user_id = b.user_id
join analytics.support sp on b.user_id = sp.user_id;