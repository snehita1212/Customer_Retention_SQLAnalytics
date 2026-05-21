# Customer_Retention_SQLAnalytics

## Business Overview
NovaStream is a fictional subscription-based streaming platform that operates globally with multiple subscription plans. The platform tracks user subscriptions, engagement behavior, watch history, payments, and content preferences.
The aim of this project is to improve the following:
- customer retention
- subscription growth
- revenue optimization
- user engagement

* Dataset contains 1000 entries.
* For normalization later - columns & datatypes-
- customer_id = text, 
- subscription_length_(months) = int,
- customer_satisfaction_score_(1-10) = int,
- daily_watch_time_(hours) = int,
- engagement_rate_(1-10) = int,
- device_used_most_often = text,
- genre_preference = text,
- region = text,
- payment_history_(on-time/delayed) = text,
- subscription_plan = text,
- churn_status_(yes/no) = text,
- support_queries_logged = int,
- age = int,
- monthly_income_($) = int,
- promotional_offers_used = int,
- number_of_profiles_created = int
*-No incomplete records

### new tables
- staging.cleaned_customers (all)
- analytics.users (id, age, region, monthly_income)
- analytics.subscriptions (id, user_id, sub_plan, sub_months, churn_status, promo_offers_used, profiles_created)
- analytics.engagement (id, user_id, daily_watch_hours, eng_rate, satisfaction_score, device, genre)
- analytics.billing (id, user_id, pay_status, monthly_income)
- analytics.support (id, user_id, support_queries)

### making a customer intelligence mart
all columns from all tables in one place

### queries
- churn rate by plan(plan, total_customers, returning_customers, returning_rate -- in desc) = basic > premium > standard
- customer segments in 'marts' on engagement type (power > active > moderate > passive)
- ranking by daily_watch_hours - window function
- regional revenue by assigning numbers to each plan (basic = 2,standard = 6, premium = 10) = Asia -- do once more
- churn risk (to define a score for each category and then add to find the risk factor, parameters = satisfaction_Score, engagement_rate, daily_watch_hours, sub_length_months, support_queries_log, payment_status) = gave 21 distinct risk scores
- income quartile vs type of subscription plan

-------------------------------------------------------
to write-
objectives, planned analyses...
