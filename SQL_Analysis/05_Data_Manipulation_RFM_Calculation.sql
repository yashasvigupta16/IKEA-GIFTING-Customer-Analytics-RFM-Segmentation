-- FILTER AND CALCULATE RECENCY, FREQUENCY AND MONETARY

-- FINDING LATEST DATE TO MAKE SNAPSHOTDATE
SELECT 
  MAX(Invoicedate) AS LatestInvoiveDate
FROM dbo.RetailCleaned;

-- CALCULATING RFM AT CUSTOMER LEVEL
DECLARE @snapshotdate DATE = '2011-12-10'
SELECT
  Customer_id,
  DATEDIFF(DAY,MAX(Invoicedate),@snapshotdate) AS Recency,
  COUNT(Invoice) AS Frequency,
  SUM(Quantity * Price) AS Monetary
INTO Customer_RFM
FROM dbo.RetailCleaned
WHERE Quantity > 0
GROUP BY Customer_id;

-- SCORE CUSTOMERS AND ASSIGN BUSINESS SEGMENTS
WITH RFM_Scoring AS
(SELECT
  Customer_id,
  Recency,
  Frequency,
  Monetary,
  6 - NTILE(5) OVER(ORDER BY Recency ASC) AS R_Score,
  NTILE(5) OVER(ORDER BY Frequency ASC) AS F_Score,
  NTILE(5) OVER(ORDER BY Monetary ASC) AS M_Score
FROM dbo.Customer_RFM)
, RFM_Segmentation AS
(SELECT 
* ,
CASE 
	WHEN R_Score >= 4 AND F_Score >= 4 AND M_Score >= 4 THEN 'Champions'
	WHEN R_Score >= 3 AND F_Score >= 3 THEN 'Loyal'
	WHEN R_Score <= 2 AND F_Score >= 3 THEN 'At Risk'
	WHEN R_Score >= 4 AND F_Score <= 2 THEN 'New'
	WHEN R_Score = 3 AND F_Score <= 2 THEN 'Needs Attention'
	ELSE 'Lost'
END AS Segment,
CASE
	WHEN Recency > 90 THEN 1
	ELSE 0
END AS Is_Churned
FROM RFM_Scoring)
SELECT *
INTO Customer_RFM_Segmented
FROM RFM_Segmentation;
