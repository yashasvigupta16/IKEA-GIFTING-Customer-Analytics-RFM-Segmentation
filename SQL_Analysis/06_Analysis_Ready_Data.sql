-- COMBINING CLEANED AND ANALYSIS READY DATA INTO ONE TABLE
SELECT 
  B.Invoice,
  B.StockCode,
  B.Description,
  B.Quantity,
  B.Invoicedate,
  B.Price,
  B.Customer_id,
  B.Country,
  B.Sourcesheet,
  MONTH(Invoicedate) AS InvoiceMonth,
  B.Quantity * B.Price AS Revenue,
  A.Recency,
  A.Frequency,
  A.Monetary,
  A.R_Score,
  A.F_Score,
  A.M_Score,
  A.Segment,
  A.Is_Churned
INTO EcommerceDashboardData
FROM Customer_RFM_Segmented AS A
LEFT JOIN RetailCleaned AS B
ON A.Customer_id = B.Customer_id
WHERE B.Invoice IS NOT NULL AND Quantity > 0;
