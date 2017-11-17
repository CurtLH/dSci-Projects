# Welcome to my dSci-Projects!

#### [Best Variable Subset Classification Analysis](https://github.com/CurtLH/dSci-Projects/blob/master/p01_best_variable_subset/best_subset_classification_analysis.ipynb)
Logisitic regression using every permutation of the independent variables.

#### [Predict Loan Acceptance](https://curtlh.github.io/dSci-Projects/p02_predict_loan_acceptance/predict_loan_acceptance.nb.html)
Predicting whether a bank customer will accept a personal loan offer.

#### [Predict Customer Churn](https://curtlh.github.io/dSci-Projects/p03_predict_customer_churn/predict_customer_churn.nb.html)
Predicting which customer churn.

#### [Google AdWord Correlations](https://github.com/CurtLH/dSci-Projects/tree/master/p04_google_adword_correlation)
- [**Prepare Data:**](https://github.com/CurtLH/dSci-Projects/blob/master/p04_google_adword_correlation/clean_up_adword_data.ipynb)
Cleaning up the data that is exported from Google AdWords.
- [**Analyze Correlations:**](https://curtlh.github.io/dSci-Projects/p04_google_adword_correlation/correlations_of_adwords.nb.html)
Identifying which keywords are most correlated with various key performance indicators (e.g., click through rate, bounch rate, conversion rate, etc.).

#### [Customer Acquisition and Defection](https://curtlh.github.io/dSci-Projects/p05_customer_acquisition_and_defection/acquisition_vs_retention_models.nb.html)
Identifying the factors that drive customer acquisition and retention.

#### [tweeps](https://github.com/CurtLH/tweeps)
Conda package for Python that establishes a persistent connection to the Twitter Streaming API.  Also includes an ETL process to  monitor the source database and routinely extract, transform, and load data from the source database into a data warehouse.

#### [NetFlix Original Tweets](https://github.com/CurtLH/dSci-Projects/blob/master/p06_netflix_original_content/netflix_data_cleanup.ipynb)
Cleaning up Twitter data to create a [dashboard](https://public.tableau.com/profile/curtis.h.#!/vizhome/NetflixonTwitter/Dashboard) to investigate tweets related to NetFlix original content. Data collected via [`tweeps`](https://github.com/CurtLH/tweeps)

#### [Predict Machine Failure](https://github.com/CurtLH/dSci-Projects/tree/master/p07_predict_machine_failure)
Can you identify indications of a potentional machine failure with enough time to do something before the failure occurs? tldr: Nope, not in this case.
- [**Load Data:**](https://github.com/CurtLH/dSci-Projects/blob/master/p07_predict_machine_failure/1_load_data.ipynb)
Loading provided CSV files into a Postgres database.
- [**Inspect Data:**](https://github.com/CurtLH/dSci-Projects/blob/master/p07_predict_machine_failure/2_inspect_data.ipynb)
Explore datasets to better understand how the machine produces data.
- [**Prepare Data:**](https://github.com/CurtLH/dSci-Projects/blob/master/p07_predict_machine_failure/3_prepare_data.ipynb)
Aggregrate dataset from 2-minute intervals into 1-hour intervals and create an indicator of failure within the next hour.
- [**Predict Failure:**](https://github.com/CurtLH/dSci-Projects/blob/master/p07_predict_machine_failure/4_predict_failure.ipynb)
Predict whether or not the machine is going to fail within the next hour.
- [**Predict Downtime:**](https://github.com/CurtLH/dSci-Projects/blob/master/p07_predict_machine_failure/5_predict_downtime.ipynb)
Predict whether or not the machine is going to go down for any reason (maintance, failure, etc.) within the next hour.
- [**Predict Time Until Downtime:**](https://github.com/CurtLH/dSci-Projects/blob/master/p07_predict_machine_failure/6_predict_time_until_down.ipynb)
Predict the amount of time until the machine next goes down for any reason (maintenance, failure, etc.).

#### [fleaBay](https://github.com/CurtLH/fleaBay)
Conda package for Python that connects to the eBay API and obtains information regarding completed auctions for a given product category. After information is collected via the API access, auction listings are scrapped for additional attribute information (e.g., product description). Also includes an ETL process to  monitor the source database and routinely extract, transform, and load data from the source database into a data warehouse.

#### [Predict eBay Sales](https://github.com/CurtLH/dSci-Projects/tree/master/p08_predict_ebay_sales)
Can you identify whether or not a car is going to sell on eBay? And if it is going to sell, can you predict how much it will sell for? Data collected via [`fleaBay`](https://github.com/CurtLH/fleaBay)

- [**Inital Exploration:**](https://curtlh.github.io/dSci-Projects/p08_predict_ebay_sales/1_inital_exploration.nb.html)
Explore the dataset to better understand the completed listings that were collected.
- [**Predict Selling Status:**](https://curtlh.github.io/dSci-Projects/p08_predict_ebay_sales/2_predict_selling_status.nb.html)
Predict whether or not a car is going to sell.
- [**Predict Selling Price:**](https://curtlh.github.io/dSci-Projects/p08_predict_ebay_sales/3_predict_selling_price.nb.html)
Predict the final selling price of the car.

#### [buzz](https://github.com/CurtLH/buzz)
Conda package for Python that connects to the FAA Airport Status API.

#### [WQ](https://github.com/CurtLH/WQ)
Conda package for Python that connects to the Weather Underground API.

#### [Apartment Temperature](https://curtlh.github.io/dSci-Projects/p09_apartment_temperatures/apartment_temperatures.nb.html)
Comparing internal apartment temperatures to outside temperature. Data collected via [`WQ`](https://github.com/CurtLH/WQ)

#### [Arlington Weather](https://curtlh.github.io/dSci-Projects/p10_arlington_weather/weather_conditions.nb.html)
Investigating weather conditions in Arlington, Virginia over time. Data collected via [`WQ`](https://github.com/CurtLH/WQ)

#### [Solar Eclipese Temperature](https://curtlh.github.io/dSci-Projects/p11_total_eclipse_temperatures/outside_temperatures.nb.html)
Comparing outside air temperature between the day of the [Solar eclipse of 2017](https://en.wikipedia.org/wiki/Solar_eclipse_of_August_21,_2017) and the prior day. Data collected via [`WQ`](https://github.com/CurtLH/WQ)

#### [frontPage](https://github.com/CurtLH/frontPage)
Conda package for Python that collects information from classified ads posted on Backpage. Also includes an ETL process to  monitor the source database and routinely extract, transform, and load data from the source database into a data warehouse.

#### [Hidden Networks](https://github.com/CurtLH/dSci-Projects/tree/master/p12_hidden_networks)
Identifying hidden relationships between classified ads. Data collected via [`frontPage`](https://github/com/CurtLH/frontPage)

- [**Connecting to the Database:**](https://github.com/CurtLH/dSci-Projects/blob/master/p12_hidden_networks/1_connecting_to_database_using_pandas.ipynbl)
Example of connecting to a Postgres database using `pandas`.
- [**Inital Exploration:**](https://github.com/CurtLH/dSci-Projects/blob/master/p12_hidden_networks/2_inital_exploration.ipynb)
Exploration of the dataset to better understand overall trends of classified ads.
- [**Ad Similarity:**](https://github.com/CurtLH/dSci-Projects/blob/master/p12_hidden_networks/3_ad_similarity.ipynb)
Calculate the similiarity between phone numbers associated with ads based on overlap of the text within the ad.
- [**Phone Network:**](https://curtlh.github.io/dSci-Projects/p12_hidden_networks/phone_network.html)
Visualize the relationships between phone numbers based on ad text similarity.

#### [Take Home Challenges](https://github.com/CurtLH/dSci-Projects/tree/master/p13_dSci_challenges)
Collection of data science take-home challenges
- [**Predict Customer Conversion:**](https://curtlh.github.io/dSci-Projects/p13_dSci_challenges/q1_conversion_rate/conversion_rate.nb.html)
Predict which customers are going to convert and identify the factors related to conversion.
