-- country_invoices.sql: Provide a query that shows the # of invoices per country. HINT: GROUP BY

select COUNT (InvoiceId) as 'Invoice Count', BillingCountry
from Invoice
group by BillingCountry 