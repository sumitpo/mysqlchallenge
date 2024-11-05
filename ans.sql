use classicmodels;
select c.`customerName` as "Customer Name", concat(e.`lastName`, ", ", e.`firstName`) as "Sales Rep"
from customers as c
join employees as e
on c.`salesRepEmployeeNumber` = e.`employeeNumber`
order by c.`customerName`

explain select c.`customerName` as "Customer Name", concat(e.`lastName`, ", ", e.`firstName`) as "Sales Rep"
from customers as c
join employees as e
on c.`salesRepEmployeeNumber` = e.`employeeNumber`
order by c.`customerName`


select onc as "Total # Ordered", productName as "Product Name", ts as "Total Sale" from (
  select count(`orderNumber`) as "onc", `productCode`, sum(`quantityOrdered`* `priceEach`) as "ts"
  from orderdetails group by `productCode`
) as tmp
join products on tmp.productCode = products.`productCode`

select status, count(*) from orders group by status;
