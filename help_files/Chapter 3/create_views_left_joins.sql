--views with left joins 
--removed drop view for initial creation of views, but can be used to reset views if needed
create view customer_email_a as
select CustomerKey, EmailAddress from DimCustomer
where  EmailAddress like '%a%@adventure-works.com';

create view customer_address_us  as
select CustomerKey, AddressLine1, AddressLine2, C.GeographyKey from DimCustomer C
join DimGeography G ON C.GeographyKey = G.GeographyKey
where  CountryRegionCode = 'US';