--creation and insertion into anaytics.users
create table analytics.users (
  user_id text primary key,
  age int not null,
  region text not null,
  monthly_income int not null
);
insert into analytics.users
select customer_id, age, region, monthly_income
from staging.cleaned_customers;
------------------------------------------------
--creation and insertion into analytics.subscriptions
create table analytics.subscriptions(
  subscription_id serial primary key,
  user_id text references analytics.users(user_id),
  subscription_plan text not null,
  subscription_length_months int not null,
  churn_status text not null,
  promotional_offers_used int,
  profiles_created int
);
insert into analytics.subscriptions(
  user_id, subscription_plan, subscription_length_months, churn_status, promotional_offers_used, profiles_created
)
select customer_id, subscription_plan, subscription_length_months, churn_status, promotional_offers_used, number_of_profiles_created
from staging.cleaned_customers;
-----------------------------------------------------
--creation and insertion into analytics.engagement
create table analytics.engagement(
  engagement_id serial primary key,
  user_id text references analytics.users(user_id),
  daily_watch_hours int,
  engagement_rate int,
  satisfaction_score int,
  device_used text,
  genre_preference text
);
insert into analytics.engagement(
  user_id, daily_watch_hours, engagement_rate, satisfaction_score, device_used, genre_preference
)
select customer_id, daily_watch_hours, engagement_rate, customer_satisfaction_score, device_used, genre_preference
from staging.cleaned_customers;
-----------------------------------------------------
--creation and insertion into analytics.billing
create table analytics.billing(
  billing_id serial primary key,
  user_id text references analytics.users(user_id),
  payment_status text,
  monthly_income int
);
insert into analytics.billing(
  user_id, payment_status, monthly_income
)
select customer_id, payment_status, monthly_income
from staging.cleaned_customers;
------------------------------------------------------
--creation and insertion into analytics.support
create table analytics.support(
  support_id serial primary key,
  user_id text references analytics.users(user_id),
  support_queries_logged int
);
insert into analytics.support(
  user_id, support_queries_logged
)
select customer_id, support_queries_logged
from staging.cleaned_customers;
------------------------------------------------------- 