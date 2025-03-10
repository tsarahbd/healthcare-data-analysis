/* Checking the data structure */
SELECT * FROM healthcare_access_countries LIMIT 10;

/* Count the number of records */
SELECT COUNT(*) FROM healthcare_access_countries;

/* Find the average life expectancy by Country */
SELECT Country, AVG(Life_Expectancy) AS Avg_Life_Expectancy
FROM healthcare_access_countries
GROUP BY Country
ORDER BY Avg_Life_Expectancy DESC;

/* The top 5 countries with the highest infant mortality rates */
SELECT Country, Year, Infant_Mortality_per_1000
FROM healthcare_access_countries
ORDER BY Infant_Mortality_per_1000 DESC
LIMIT 5;

/* Countries with the highest healthcare spending (% of GDP) */
SELECT Country, AVG(Healthcare_Spending_GDP_percent) AS Avg_Healthcare_Spending
FROM healthcare_access_countries
GROUP BY Country
ORDER BY Avg_Healthcare_Spending DESC
LIMIT 5;
