SELECT 
CONCAT(A.FirstName,' ',A.LastName) AS Customer,
A.CustomerEmail AS cust_email,
A.CustomerCity AS cust_city,
B.Date AS order_date,
B.Quantity AS order_qty,
D.ProdName AS product_name,
D.Price AS product_price,
C.CategoryName AS category_name,
B.Quantity*D.Price AS total_sales 

FROM studycase.customers A
JOIN studycase.orders B ON A.CustomerID=B.CustomerID
JOIN studycase.products D ON B.ProdNumber=D.ProdNumber
JOIN studycase.productcategory C ON C.CategoryID=D.Category

ORDER BY B.Date
LIMIT 100
