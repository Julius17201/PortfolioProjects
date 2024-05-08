SELECT *
FROM PortfolioProject1..CovidDeaths
WHERE continent is not null
Order by 3,4 


SELECT *
FROM PortfolioProject1..CovidVaccinations
ORDER BY 3,4

--Select data that to use 


SELECT location,date,total_cases,new_cases,total_deaths,population
FROM PortfolioProject1..CovidDeaths
ORDER BY 1,2


--looking at Total cases vs total deaths, note i did convert cause toatal cases and deaths were in nvarchar instead 
--float so divide wont work
--Shows the likely hood of dying to covid in UK

SELECT location,date,total_cases,total_deaths, CASE 
        WHEN TRY_CONVERT(float, total_cases) = 0 THEN NULL
        ELSE (CONVERT(float, total_deaths) / CONVERT(float, total_cases)) * 100 
    END AS DeathPercentage
FROM PortfolioProject1..CovidDeaths
WHERE location like '%United Kingdom%'
ORDER BY 1,2


--Looking at Total cases vs population
--Shows what percentage of uk population got covid
SELECT location,date,total_cases,population, CASE 
        WHEN TRY_CONVERT(float, total_cases) = 0 THEN NULL
        ELSE (CONVERT(float, total_cases) / CONVERT(float, population)) * 100 
    END AS InfectedPercentage
FROM PortfolioProject1..CovidDeaths
WHERE location like '%United Kingdom%'
ORDER BY 1,2


--Looking at Countries with Highest Infection Rate to Population

Select Location,Population,MAX(total_cases) AS Highestinfectioncount, MAX((total_cases/population))*100 as percentpopulationinfected
FROM Portfolioproject1..CovidDeaths
--Where loaction like '%United Kingdom%
GROUP BY location ,Population
ORDER BY percentpopulationinfected DESC


--Showing countries with highest death count per population 
Select Location,MAX(cast(total_deaths as int)) AS TotalDeathCount
FROM Portfolioproject1..CovidDeaths
--Where location like '%United Kingdom%
WHERE continent is not null
GROUP BY location 
ORDER BY TotalDeathCount DESC


--lets break things down by continent
Select Location,MAX(cast(total_deaths as int)) AS TotalDeathCount
FROM Portfolioproject1..CovidDeaths
--Where location like '%United Kingdom%
WHERE continent is null
GROUP BY location
ORDER BY TotalDeathCount DESC

--showing the comtinents with the highest death count per population
Select continent,MAX(cast(total_deaths as int)) AS TotalDeathCount
FROM Portfolioproject1..CovidDeaths
--Where location like '%United Kingdom%
WHERE continent is not null
GROUP BY continent
ORDER BY TotalDeathCount DESC


--GLOBAL NUMBERS
SELECT SUM(new_cases)AS total_cases,SUM(cast(new_deaths as int)) AS total_deaths, CASE 
        WHEN SUM(new_cases) <> 0 THEN SUM(cast(new_deaths as int)) / SUM(new_cases) * 100 
        ELSE NULL 
     END AS DeathPercentage
FROM PortfolioProject1..CovidDeaths
--WHERE location like '%United Kingdom%' 
WHERE continent is not null
--GROUP BY date
ORDER BY 1,2

-- Looking at total population vs vaccinations
-- Note Using "bigint" ensures that the column can accommodate larger values without causing arithmetic overflow errors. It's commonly used when dealing with counts, sums, or aggregations that may result in large numbers
--Overall, PARTITION BY allows you to perform calculations within distinct subsets of your data, enabling more granular analysis and insights.

SELECT dea.continent,dea.location,dea.date,dea.population,vac.new_vaccinations
, SUM(CONVERT(BIGINT,vac.new_vaccinations)) OVER  (Partition by dea.location Order by dea.location,dea.Date) AS Rollingpeoplevaccinated
,(RollingPeopleVaccinated/population)*100
FROM PortfolioProject1..CovidDeaths dea
JOIN PortfolioProject1..CovidVaccinations vac
ON dea.location = vac.location AND dea.date = vac.date 
WHERE dea.continent is not null
Order by 2,3;

--Note the number of columns in the CT has to be the same as in the Select columns
-- this is basically creating a temporary table
--USE CTE

With PopvsVac (Continent, location, Date , Population ,New_Vaccinations, RollingPeopleVaccinated)
AS 
(
SELECT dea.continent,dea.location,dea.date,dea.population,vac.new_vaccinations
, SUM(CONVERT(BIGINT,vac.new_vaccinations)) OVER  (Partition by dea.location Order by dea.location,dea.Date) AS Rollingpeoplevaccinated
--,(RollingPeopleVaccinated/population)*100
FROM PortfolioProject1..CovidDeaths dea
JOIN PortfolioProject1..CovidVaccinations vac
ON dea.location = vac.location AND dea.date = vac.date 
WHERE dea.continent is not null
--Order by 2,3;
)
SELECT *, (RollingPeopleVaccinated/Population)*100
FROM PopvsVac



--TEMP TABLE
DROP Table IF exists #PercentPopulationVaccinated
Create Table #PercentPopulationVaccinated
(
Continent nvarchar(255),
location nvarchar(255),
date datetime,
Population numeric,
New_vaccinatons numeric, 
RollingPeopleVaccinated numeric
)

INSERT INTO #PercentPopulationVaccinated
SELECT dea.continent,dea.location,dea.date,dea.population,vac.new_vaccinations
, SUM(CONVERT(BIGINT,vac.new_vaccinations)) OVER  (Partition by dea.location Order by dea.location,dea.Date) AS Rollingpeoplevaccinated
--,(RollingPeopleVaccinated/population)*100
FROM PortfolioProject1..CovidDeaths dea
JOIN PortfolioProject1..CovidVaccinations vac
ON dea.location = vac.location AND dea.date = vac.date 
--WHERE dea.continent is not null
--Order by 2,3;

SELECT *, (RollingPeopleVaccinated/Population)*100 AS RollingPeopleVaccinatedPercent
FROM PercentPopulationVaccinated



--Creating View to store data for later vilualisations 


Create View PercentPopulationVaccinated AS
SELECT dea.continent,dea.location,dea.date,dea.population,vac.new_vaccinations
, SUM(CONVERT(BIGINT,vac.new_vaccinations)) OVER  (Partition by dea.location Order by dea.location,dea.Date) AS Rollingpeoplevaccinated
--,(RollingPeopleVaccinated/population)*100
FROM PortfolioProject1..CovidDeaths dea
JOIN PortfolioProject1..CovidVaccinations vac
ON dea.location = vac.location AND dea.date = vac.date 
WHERE dea.continent is not null
--Order by 2,3;

SELECT *
FROM PercentPopulationVaccinated
