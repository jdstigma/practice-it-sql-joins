/*
In this exercise, you'll practice both inner and left outer joins by combining the DimReseller table with a DimGeographic table, and output the reseller mailing address for customers within a geographic region and the region can be passed through your where clause. To make this even more interesting, we only want to output customers that have made purchases and output their product subcategory.
Required columns:
- dimreseller.geographykey
- dimreseller.resellerkey
Required Tables:
- DimReseller
- DimGeography
Query: create a query that outputs the required columns and filters the results to only include resellers in the United States. Use an inner join to combine the DimReseller and DimGeography tables on the GeographyKey column.
*/
CREATE VIEW vw_reseller_geography AS
SELECT
    r.GeographyKey,
    r.ResellerKey,
    r.resellername,
FROM
    DimReseller r
INNER JOIN
    DimGeography g ON r.GeographyKey = g.GeographyKey
LEFT OUTER JOIN
    Dimcustomer c 
    ON r.geographykey = c.geographykey
WHERE
    g.CountryRegionName = 'United States' AND