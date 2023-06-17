select * from Invoice i 
group by BillingCountry;

select BillingCountry ,count(BillingCountry) as Banyak from Invoice i 
group by BillingCountry
order by Banyak DESC
InvoiceId 

--1
select BillingCountry,sum(Total) as total_value from Invoice i 
group by BillingCountry 

--2
select BillingCountry,max(Total) as Maksimum from Invoice i 
group by BillingCountry 
order by Maksimum desc
--3
select BillingCountry,min(Total) as Minimum from Invoice i 
group by BillingCountry 
order by Minimum
