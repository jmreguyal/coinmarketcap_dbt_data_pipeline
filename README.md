# Repository for the DBT Data Pipeline using CoinMarketCap API Data

The project involves doing an ETL process on CoinMarketCap API Data.

## The steps involved are:

1.) Getting data from CoinMarketCap API

2.) Loading raw data to PostgreSQL using Python to "staging" schema

3.) Transformation of raw data using DBT

4.) Loading clean data to "prod" schema

5.) Using PowerBI to create dashboard


## I will explain what each folder in the repository contains:

1.) CoinMarketCap API Pull Code

= Contains the Python code for getting the API data, and loading it to PostgreSQL

= Also contains the raw CSV file data

2.) PowerBI Dashboard

= Contains the data visualization of the clean data using PowerBI

3.) Project Diagram

= Contains the diagram file showing the steps for the project

4.) demo_dbt

= project repository for the DBT transformation

