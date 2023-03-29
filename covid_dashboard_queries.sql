SELECT SUM(new_cases) as total_cases, SUM(CAST(new_deaths as int))/SUM(new_cases) * 100 as
death_percentage
FROM covid_deaths
WHERE continent is not null
Order by 1,2


SELECT location SUM(CAST(new_deaths as int)) as totaldeathcount
FROM covid_deaths
WHERE continent is NULL and location not in ('World','European Union','International')
GROUP BY location
ORDER BY TotalDeathCount desc


SELECT location, population, MAX(total_cases) as HighestInfectionCount,
    MAX(total_cases/ population) * 100 AS PerpcentPopulationInfected
FROM covid_deaths
GROUP BY location, Population
ORDER by PercentPopulationInfected desc

SELECT location, population, date MAX(total_cases) as HighestInfectionCount,
  MAX(total_cases/population) * 100 as PercentPopulationInfected
FROM covid_deaths
GROUP BY location, population, date
ORDER BY PercentPopulationInfected
