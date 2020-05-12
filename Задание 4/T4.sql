SELECT city.FULL_NAME_ND
from City city join  Country country on city.ID_Country = country.ID_Country  
where country.COUNTRY_NAME = 'Belgium' and LOWER(city.FULL_NAME_ND) like 'st%'

CREATE NONCLUSTERED INDEX Index_ID_Country
ON City (ID_Country)
Include (FULL_NAME_ND)
GO

Drop index Index_ID_Country
ON City

DBCC SHOW_STATISTICS (City,Index_ID_Country)