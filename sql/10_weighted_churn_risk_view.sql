--weighted churn risk by assigning an int value to different values of affecting parameters

create view marts.churn_risk as
select user_id,(case 
  when satisfaction_score <= 2 then 4
  when satisfaction_score <= 4 then 3
  when satisfaction_score <= 6 then 2
  when satisfaction_score <= 8 then 1 else 0 end +
  case
  when engagement_rate <= 2 then 4
  when engagement_rate <= 4 then 3
  when engagement_rate <= 6 then 2
  when engagement_rate <= 8 then 1 else 0 end + 
  case 
  when daily_watch_hours <= 1 then 4
  when daily_watch_hours <= 2 then 3
  when daily_watch_hours <= 3 then 2
  when daily_watch_hours <= 4 then 1 else 0 end +
  case
  when subscription_length_months <= 5 then 4
  when subscription_length_months <= 10 then 3
  when subscription_length_months <= 15 then 2
  when subscription_length_months <= 20 then 1 else 0 end +
  case 
  when support_queries_logged >= 8 then 4
  when support_queries_logged >= 6 then 3
  when support_queries_logged >= 4 then 2
  when support_queries_logged >= 2 then 1 else 0 end + 
  case 
  when payment_status = 'delayed' then 4 else 0 end) as churn_risk_score
from marts.customer_intelligence;