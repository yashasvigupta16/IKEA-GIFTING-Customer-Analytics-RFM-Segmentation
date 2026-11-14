-- CHECK 1 -> MISSING CUSTOMER ID
SELECT
  COUNT(*) AS MissingCustomerId
FROM dbo.RetailCombined
WHERE Customer_ID IS NULL

-- CHECK 2 -> NEGATIVE OR ZERO QUANTITY
SELECT
  COUNT(*) AS InvalidQuantity
FROM dbo.RetailCombined
WHERE Quantity <= 0

-- CHECK 3 -> MISSING DESCRIPTION
SELECT
  COUNT(*)
FROM dbo.RetailCombined
WHERE Description IS NULL

-- CHECK 4 -> NEGATIVE OR ZERO PRICE
SELECT
  COUNT(*) 
FROM dbo.RetailCombined
WHERE Price <= 0

-- CHECK 5 -> EXACT DUPLICATE VALUE
SELECT 
  Invoice,
  StockCode,
  Description,
  Quantity,
  Invoicedate,
  Price,
  Customer_ID,
  Country,
  COUNT(*) AS NoOfTimes
FROM dbo.RetailCombined
GROUP BY Invoice,StockCode,Description,Quantity,Invoicedate,Price,Customer_ID,Country
HAVING COUNT(*) > 1
