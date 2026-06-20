CREATE DATABASE Retail_Banking_DB;
use Retail_Banking_DB;



CREATE TABLE RetailBankingCustomers (

    Customer_ID VARCHAR(20) PRIMARY KEY,
	Age INT,
    Gender VARCHAR(10),
    Region VARCHAR(20),
    City VARCHAR(50),
    Income BIGINT,
    Income_Category VARCHAR(20),
    Occupation VARCHAR(50),
    Customer_Segment VARCHAR(20),
    Deposit_Balance DECIMAL(15,2),
    Loan_Amount DECIMAL(15,2),
    Number_of_Products INT,
    Primary_Product VARCHAR(50),
    Mobile_Banking VARCHAR(5),
    Internet_Banking VARCHAR(5),
    Credit_Card VARCHAR(5),
    Active_Customer VARCHAR(5),
    Customer_Tenure INT,
    Monthly_Transactions INT,
    Customer_Value VARCHAR(20),
	Revenue DECIMAL(15,2),
	Cross_Sell_Opportunity VARCHAR(20)
	);
    SELECT COUNT(*) AS Total_Customers
	FROM RetailBankingCustomers;
    
    -- =====================================================
-- Query 1: Executive Portfolio Summary
-- =====================================================

SELECT
    COUNT(*) AS Total_Customers,
    SUM(Deposit_Balance) AS Total_Deposit_Portfolio,
    SUM(Loan_Amount) AS Total_Loan_Portfolio,
    AVG(Deposit_Balance) AS Average_Deposit,
    AVG(Loan_Amount) AS Average_Loan,
    SUM(Revenue) AS Total_Revenue
FROM RetailBankingCustomers;

-- =====================================================
-- Query 2: Active Customer Analysis
-- =====================================================

SELECT
    Active_Customer,
    COUNT(*) AS Customers,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(),2) AS Percentage
FROM RetailBankingCustomers
GROUP BY Active_Customer;

-- =====================================================
-- Query 3: Customer Segment Distribution
-- =====================================================

SELECT
    Customer_Segment,
    COUNT(*) AS Customers
FROM RetailBankingCustomers
GROUP BY Customer_Segment
ORDER BY Customers DESC;

-- =====================================================
-- Query 4: Deposit Portfolio by Customer Segment
-- =====================================================

SELECT
    Customer_Segment,
    SUM(Deposit_Balance) AS Deposit_Portfolio
FROM RetailBankingCustomers
GROUP BY Customer_Segment
ORDER BY Deposit_Portfolio DESC;

-- =====================================================
-- Query 5: Loan Portfolio by Customer Segment
-- =====================================================

SELECT
    Customer_Segment,
    SUM(Loan_Amount) AS Loan_Portfolio
FROM RetailBankingCustomers
GROUP BY Customer_Segment
ORDER BY Loan_Portfolio DESC;

-- =====================================================
-- Query 6: Product Adoption Analysis
-- =====================================================

SELECT
    Primary_Product,
    COUNT(*) AS Customers
FROM RetailBankingCustomers
GROUP BY Primary_Product
ORDER BY Customers DESC;

-- =====================================================
-- Query 7: Regional Deposit Portfolio
-- =====================================================

SELECT
    Region,
    SUM(Deposit_Balance) AS Deposit_Portfolio
FROM RetailBankingCustomers
GROUP BY Region
ORDER BY Deposit_Portfolio DESC;

-- =====================================================
-- Query 8: Regional Loan Portfolio
-- =====================================================

SELECT
    Region,
    SUM(Loan_Amount) AS Loan_Portfolio
FROM RetailBankingCustomers
GROUP BY Region
ORDER BY Loan_Portfolio DESC;

-- =====================================================
-- Query 9: Digital Banking Adoption
-- =====================================================

SELECT
    Mobile_Banking,
    Internet_Banking,
    COUNT(*) AS Customers
FROM RetailBankingCustomers
GROUP BY
    Mobile_Banking,
    Internet_Banking
ORDER BY Customers DESC;

-- =====================================================
-- Query 10: Revenue by Customer Segment
-- =====================================================

SELECT
    Customer_Segment,
    SUM(Revenue) AS Total_Revenue
FROM RetailBankingCustomers
GROUP BY Customer_Segment
ORDER BY Total_Revenue DESC;
