-- COMBINE BOTH YEARS AND CONVERT DATATYPE SAFELY
SELECT 
	Invoice,
	StockCode,
	Description,
	Quantity,
	COALESCE(
		TRY_CONVERT(datetime2,InvoiceDate,120),
		TRY_CONVERT(datetime2,InvoiceDate,101)
		) AS Invoicedate,
	TRY_CONVERT(DECIMAL(10,2),Price) AS Price,
	Customer_ID,
	Country,
	'2009-2010' AS Sourcesheet
INTO dbo.RetailCombined
FROM [dbo].[Ikea 2009 -2010]
UNION ALL
	SELECT 
	Invoice,
	StockCode,
	Description,
	Quantity,
	COALESCE(
		TRY_CONVERT(datetime2,InvoiceDate,120),
		TRY_CONVERT(datetime2,InvoiceDate,101)
	) AS Invoicedate,
	TRY_CONVERT(DECIMAL(10,2),Price) AS Price,
	Customer_ID,
	Country,
	'2010-2011' AS Sourcesheet
FROM [dbo].[Ikea 2010 -2011]

-- CONFIRM THE CONVERSION WORKED CLEANLY
SELECT 
  COUNT(*) AS TotalRows
FROM dbo.RetailCombined

SELECT 
  COUNT(*) AS FailedDates
FROM dbo.RetailCombined
WHERE Invoicedate IS NULL

SELECT 
  COUNT(*) AS FailedPrice
FROM dbo.RetailCombined
WHERE Price IS NULL
