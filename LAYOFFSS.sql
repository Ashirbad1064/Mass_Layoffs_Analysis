use layoff

select * from layoffs


# Find the List of companies in India with the laid off members

select TOP 3 Company,Country,Total_Laid_Off from layoffs where Country='India'
order by Total_Laid_Off desc


# Total No_of people laid of in USA

select  Country,sum(Total_Laid_Off) as Total_people from layoffs
where Country='United States'



# Show TOP_3 countries in terms of layoffs

select TOP 3 Country,SUM(Total_Laid_Off) as Total_laid_offs
from layoffs group by Country
order by SUM(Total_Laid_Off) DESC

# Show TOP_3 countries in terms of layoffs in_finance and education startups


select TOP 3 Country,SUM(Total_Laid_Off) as Total_laid_offs
from layoffs 
where Industry='Education' or Industry='Finance'
group by Country
order by SUM(Total_Laid_Off) DESC


# Show the total layoff Industry_wise Only show the industries with atleast 10000 layoffs 

select TOP 2  Industry,SUM(Total_Laid_Off) as TotalLayOff
from layoffs
group by Industry
having sum (Total_Laid_Off)>=10000
order by sum(Total_Laid_Off) DESC


# Show the top_3 months with_maximum layoffs 

select * from layoffs

select TOP 3  month(cast(Date as Date )) as date_new,sum(Total_Laid_Off) as total_laid
from layoffs
group by month(cast(Date as Date ))
order by 2 desc


# Show the list of industries with average layoffs of at least 30000

select * from layoffs

select Industry,avg(Total_Laid_Off) as avg_layoffs from layoffs 
group by Industry
having avg(Total_Laid_Off)<=30000

# Show the list of top 5 cities with 5 highest layoffs in the world

select TOP 5 Location,Total_Laid_off from layoffs
order by 2 desc

# Show the list of topp 5 Indian Inustries that have laid offf people

select TOP 5 Industry,Total_Laid_Off from layoffs 
order by 2 desc


