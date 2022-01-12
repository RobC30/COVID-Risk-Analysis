CREATE TABLE Covid19_Initial_Data();
COPY Covid19_Initial_Data FROM 'C:\Users\Michael\OneDrive\Desktop\DataAnalyticsBootCamp\Final_Project\COVID-Risk-Analysis\Resources\initial_covid_data.csv' DELIMITER ' ';

CREATE TABLE Covid_CLean_Data(
	Row_ID,
	continent,
	locations,
	dates,
	new_cases,
	new_deaths,
	new_cases_smoothed_per_million,
	reproduction_rate,
	new_tests_smoothed,
	tests_units,
	stringency_index,
	population,
	population_density,
	median_age,
	aged_65_older,
	aged_70_older,
	gdp_per_capita,
	extreme_poverty,
	cardiovasc_death_rate,
	diabetes_prevalence,
	female_smokers,
	male_smokers,
	hospital_beds_per_thousand,
	life_expectancy,
	human_development_index
);
--COPY Covid19_Initial_Data FROM 'C:\Users\Michael\OneDrive\Desktop\DataAnalyticsBootCamp\Final_Project\COVID-Risk-Analysis\Resources\Covid_Cleaned_Database.csv' DELIMITER ' ';
