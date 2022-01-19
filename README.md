# __COVID-Risk-Analysis Project__

In 2019, the world was exposed to SARS-CoV-2 creating a global panic which devastated the world; socially, politically and economically. To understand the deadly disease one must understand the morphology of SARS-CoV-2, specially the spike glycoprotein. The spike protein fuses to the cell membrane by binding to the N terminal and entering the cell where the virus is replicated. There have been other outbreaks of viruses with spike proteins, such as SARS and MERS, which also carry the spike protein. Many biological factors which lead to this global pandemic such as the high transmissibility of the virus as well as deadly complication such as MIS-C(multi system inflammatory syndrome in children) or multi system organ failure induced by the cytokine storm. Omicron has been shown to be highly mutable with a total of 50 point mutations - 36 of which are on the spike protein making this the deadliest and most transmissible variant to date.

![covid-variants-1500px jpg](https://user-images.githubusercontent.com/89358080/150033604-13497220-a62e-468e-b5cc-dd9f063cd0b4.jpg)

Due to the effect SARS-CoV-2 has had on the world, we are interested in understanding how the virus will affect different communities given the effect it has had on every person in the world. A predictive model was created by looking at a variety of factors, including vaccination status, testing, and comorbidities. The model was then used to determine the impact of COVID in communities. The purpose of the research is to see if there are any factors that could contribute to large outbreaks. A dataset on this [Github](https://github.com/owid/covid-19-data/blob/master/public/data/README.md) page was found and [this dataset](https://covid.ourworldindata.org/data/owid-covid-data.csv) will be used to conduct the analysis. The random forest machine learning model will be used to start the analysis.


The [Google Slides](https://docs.google.com/presentation/d/101htR5K1BQZjaQds0KX6pGQzegq2OEnil5-H-vAukYI/edit?usp=sharing) can be found here. The data provided by __Our World in Data (OWID)__ was very comprehensive, as it spanned many features across the globe. However, the data still needed to be cleaned up and was done so by first sorting through and filtering out any missing data points. Using Tableau, the data is easily visualized.

## __Data Cleaning__

## __Data Preprocessing__

## __Data Training__

## __Model Choice__

__RandomForestClassifier__ <br>
For our data analysis, we initially planned to use RandomForestClassifer to determine a country's predicted state of COVID risk. Our model is to forecast a future month's number of COVID deaths based on a number of features. The features are as follows:

<div align="center"> 

|             | Features    |               |
|    :----:   |    :----:   |    :----:     |
| Country      | Date       | New Cases  |
| New Cases   | Reproduction Rate        | Stringency Index  |
| Population   | Population Density        | Median Age     |
| Number of Age 65+   | Number of Age 70+        | GDP per Capita      |
| Extreme Poverty  | Cardiovascular Health        | Diabetes Prevalence     |
| Female Smokers   | Male Smokers        | Hospital Beds per Thousand      |
| Life Expectancy   | Human Development Index        |


</div>

Based on these features, our model will classify if a country's forecasted monthly COVID deaths is __Bad, Worse or Worst.__ This will involve bucketing projected outcomes (e.g. >10,000 deaths - Bad, 10,000 to 50,000 deaths - Worse, 50,000 deaths - Worst)

__RandomForestRegression__ <br>
In the middle of our analysis, to better represent a time series data we then opted for a RandomForestRegression instead. This will keep our findings cleaner with a definite projected number per month wherein we can pinpoint environment seasonalities (vaccinations started, vaccinations availablity, boosters, re-openings, etc.). We used the same features as stated above. We also experimented on __New Cases__ as our target variable for our model, this will be insightful if we see the number of COVID deaths plateuing because of vaccination efforts. Looking at New Cases instead will keep our model relevant.

- planned to use randomforestclassifer first to determine bad worse worst - considered bucketing
- changed to randomforestregression for time series data, captures seasonalities
- used new_deaths as target variable first
- experimented with new_cases next
- used boosters for both

## Results
### Training Scores
### Accuracy Scores

## ERD
<div align="center"> 

<img src = https://raw.githubusercontent.com/RobC30/COVID-Risk-Analysis/main/Resources/ERD.png width = 500 >

</div>
 
