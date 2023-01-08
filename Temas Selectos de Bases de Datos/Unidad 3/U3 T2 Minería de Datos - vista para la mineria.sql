create view vw_accessoriescomponents as
select c.customerkey, c.geographykey, c.customeralternatekey, c.title, c.firstname, c.middlename, c.lastname, c.namestyle, c.birthdate, c.maritalstatus, c.suffix, c.gender, c.emailaddress, c.yearlyincome, c.totalchildren,
c.numberchildrenathome, c.englisheducation, c.spanisheducation, c.frencheducation, c.englishoccupation, c.spanishoccupation, c.frenchoccupation, c.houseownerflag, c.numbercarsowned, c.addressline1,
c.addressline2, c.phone, c.datefirstpurchase, c.commutedistance, g.city, g.stateprovincename, g.spanishcountryregionname, x.region, x.age, case x.[accessories] when 0 then 0 else 1 end as accessoriesbuyer, case x.[components] when 0 then 0 else 1 end as componentsbuyer
from dbo.dimcustomer as c
inner join dimgeography g on c.geographykey = g.geographykey
inner join(select customerkey, region, age, sum(case [englishproductcategoryname] when 'accessories' then 1 else 0 end) as accessories, sum(case [englishproductcategoryname] when 'components' then 1 else 0 end) as components
from dbo.vdmprep
group by customerkey, region, age) as x on c.customerkey = x.customerkey

select * from vw_AccessoriesComponents