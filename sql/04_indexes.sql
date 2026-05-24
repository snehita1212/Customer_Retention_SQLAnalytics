create index idx_sub_user on analytics.subscriptions(user_id);
create index idx_engagement_user on analytics.engagement(user_id);
create index idx_billing_user on analytics.billing(user_id);