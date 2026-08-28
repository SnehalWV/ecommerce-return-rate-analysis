# ecommerce-return-rate-analysis
E-commerce return rate analysis using Python, SQL, Power BI and Logistic
# E-Commerce Return Rate Reduction Analysis

##  Project Overview

This project analyzes e-commerce order data to understand customer return patterns and identify areas where return rates can be reduced.

The project uses **Python, SQL, Power BI and Machine Learning** to perform data analysis and predictive modeling.

---

##  Business Objective

The main objective is to:

* Analyze the overall return rate
* Identify categories with high return rates
* Analyze return patterns across shipping and payment methods
* Understand the impact of discounts and customer attributes
* Build an interactive Power BI dashboard
* Predict return likelihood using Logistic Regression

---

## Dataset

The dataset contains **10,000 e-commerce orders**.

Important columns include:

* Product Category
* Product Price
* Order Quantity
* User Age
* User Gender
* User Location
* Payment Method
* Shipping Method
* Discount Applied
* Return Status

---

##  Tools & Technologies

 Tool                 Purpose                       
 -------------------  ----------------------------- 
 |Python              | Data cleaning and analysis    |  
 |Pandas              | Data manipulation             |  
 |SQL                 | Data analysis and aggregation |
 |Power BI            | Dashboard and visualization   |
 |Scikit-learn        | Machine Learning              |
 |Logistic Regression | Return prediction             |

---

##  Data Analysis

The overall return rate in the dataset is:

### **50.52%**

Category-wise return rates:

Product Category	Return Rate
Clothing	        52.45%
Electronics	     50.93%
Books	           50.66%
Toys	            49.54%
Home	            49.01%

### Key Finding

**Clothing has the highest return rate at 52.45%**, while Home has the lowest at 49.01%.

---

##  Shipping Analysis

 Shipping Method  Return Rate 
 ---------------  ----------: 
 Next-Day              51.09% 
 Standard              50.52% 
 Express               49.94% 

The differences between shipping methods are relatively small.

---

##  Payment Analysis

 Payment Method | Return Rate 
 --------------  ----------: 
 Gift Card            51.60% 
 Debit Card           51.12% 
 Credit Card          50.51% 
 PayPal               48.83% 

Payment method shows some variation, but it should not be considered the direct cause of returns without further investigation.

---

##  Machine Learning

A **Logistic Regression** model was developed to predict whether an order would be returned.

### Target Variable

`Return_Status`

* `1` → Returned
* `0` → Not Returned

### Features Used

* Product Category
* Product Price
* Order Quantity
* User Age
* User Gender
* User Location
* Payment Method
* Shipping Method
* Discount Applied

### Model Performance

The Logistic Regression model achieved approximately **50% accuracy** on the test dataset.

This indicates that the current features are not sufficient for highly accurate return prediction.

The model is therefore treated as an **initial predictive analysis** rather than a production-ready prediction model.

---

##  Power BI Dashboard

An interactive Power BI dashboard was created to provide an easy-to-understand view of return performance.

The dashboard includes:

* Total Orders
* Returned Orders
* Return Rate
* Category-wise Return Rate
* Shipping Analysis
* Payment Analysis
* Discount Analysis
* Interactive Filters

---

##  Key Insights

1. Overall return rate is **50.52%**.
2. Clothing has the highest return rate at **52.45%**.
3. Home has the lowest return rate at **49.01%**.
4. Shipping and payment methods show relatively small differences.
5. Logistic Regression achieved approximately **50% accuracy**.
6. More detailed return-reason data could improve future analysis and prediction.

---

##  Business Recommendations

* Investigate the reasons behind high returns in Clothing.
* Improve product descriptions and sizing information.
* Identify individual products with unusually high return rates.
* Monitor return rates regularly through the Power BI dashboard.
* Collect detailed return reasons.
* Add more relevant features to improve future Machine Learning models.

---


##  Skills Demonstrated

* Data Cleaning
* Exploratory Data Analysis
* Python & Pandas
* SQL
* Data Visualization
* Power BI Dashboard Development
* Data Storytelling
* Logistic Regression
* Business Recommendations

---

##  Conclusion

This project demonstrates how data analysis and visualization can be used to understand e-commerce return behavior.

The analysis identified important return patterns, with **Clothing showing the highest return rate**. A Power BI dashboard was developed for interactive analysis, while Logistic Regression was used as an initial approach to predict return likelihood.

The project provides a foundation for further analysis using detailed return reasons, product-level information and additional customer behavior features.
