# Methodology

## Project Architecture
Raw Dataset (CSV) → Raw Schema Layer → Staging Layer → Normalized Analytics Layer → Customer Intelligence Layer → Derive insights from SQL queries → Dashboard creation → Project Insights. <br>
This method separates data import, cleaning, transformation, analysis, and reporting steps.

## Data Source
The dataset consists of 1,000 customer records from a streaming platform environment.

## Data Ingestion
The dataset was imported into PostgreSQL using Neon.
A raw schema was created to store the source data without modification to ensure the true source.

## Data Cleaning
A staging layer was created to standardize the data for analysis.
Data preparation steps included:
* Standardizing column names
* Validating data types
* Verifying missing values
* Verifying duplicate records
* Ensuring consistency
No duplicate records or missing values were identified in the dataset.

## Data Modeling
To improve analytical flexibility and demonstrate relational database principles, the data was normalized into multiple business entities.

### Users
Stores customer demographics:
* Customer ID
* Age
* Region
* Income

### Subscriptions
Stores subscription-related data:
* Plan type
* Subscription length
* Number of promotional offers used
* Churn status
* Number of profiles created

### Engagement
Stores engagement metrics:
* Daily watch time
* Engagement rate
* Satisfaction score
* Device used
* Genre preference

### Billing
Stores payment-related information:
* Payment status
* Monthly income of customer

### Support
Stores customer support information:
* Number of logged support queries

## Customer Intelligence Mart
A consolidated customer intelligence mart was created by joining normalized tables.It provided a unified customer view that became the primary dataset for business analysis.

## Churn Risk Model

A weighted churn risk scoring model was developed to identify customers with elevated churn risk.
The model consider the following business factors: Satisfaction Score, Engagement Rate, Daily Watch Hours, Subscription Length, Support Queries Logged, Payment Status.

Each factor contributes to an overall churn risk score and classifies customers according to retention risk.

## Business Analysis

Several analytical queries were made, including:
* Customer segmentation analysis
* Churn rate by subscription plan
* Ranking by daily watch duration
* Monthly revenue analysis by region
* Churn by satisfaction level
* Subscription plan preference by income quartile
* Churn rate by engagement level
* Churn rate by genre preference
* Churn rate by device used

## Dashboard Development
An interactive Power BI dashboard was developed to communicate and make further observations. The dashboard consists of five sections:
* Executive Summary
* Churn Insights
* Behavioral Insights
* Churn Risk Model

## Technology Stack
* PostgreSQL
* Neon
* SQL
* Power BI
* GitHub

The combination of these technologies enables a complete workflow from data ingestion to executive reporting.
