create table staging.cleaned_customers as
select trim(customer_id) as customer_id,
"subscription_length_(months)" as subscription_length_months,
"customer_satisfaction_score_(1-10)" as customer_satisfaction_score,
"daily_watch_time_(hours)" as daily_watch_hours,
"engagement_rate_(1-10)" as engagement_rate,
lower(trim(device_used_most_often)) as device_used,
trim(genre_preference) as genre_preference,
trim(region) as region,
lower(trim("payment_history_(on-time/delayed)")) as payment_status,
lower(trim(subscription_plan)) as subscription_plan,
lower(trim("churn_status_(yes/no)")) as churn_status,
support_queries_logged, age,
"monthly_income_($)" as monthly_income,
promotional_offers_used, number_of_profiles_created
from raw.netflix_source;