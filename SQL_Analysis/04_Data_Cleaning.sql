-- DEDUPLICATE AND PRODUCE THE FINAL CLEAN TABLE
WITH Deduped AS
(SELECT
	Invoice,
	StockCode,
	Description,
	Quantity,
	Invoicedate,
	Price,
	Customer_id,
	Country,
	Sourcesheet,
	ROW_NUMBER() OVER(PARTITION BY Invoice,StockCode,Description,Quantity,Invoicedate,Price,Customer_id,Country ORDER BY (SELECT NULL)) AS RowNum
FROM dbo.RetailCombined)
SELECT 
	Invoice,
	StockCode,
	Description,
	Quantity,
	Invoicedate,
	Price,
	Customer_id,
	Country,
	Sourcesheet
INTO dbo.RetailCleaned
FROM Deduped
WHERE RowNum = 1

SELECT * FROM dbo.RetailCleaned
