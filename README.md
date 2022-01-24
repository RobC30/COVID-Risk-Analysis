# __COVID Risk Analysis Project__

## Background:

In 2019, the world was exposed to SARS-CoV-2, creating panic that devastated the world in all aspects: socially, politically and economically. To understand the deadly disease one must understand the morphology of SARS-CoV-2, specifically the spike glycoprotein. The spike protein fuses to the cell membrane by binding to the N terminal and entering the cell to where the virus is replicated. There have been other outbreaks of viruses with spike proteins, such as SARS and MERS. Many biological factors have lead to this global pandemic, such as the high transmissibility of the virus as well as deadly complications such as MIS-C (Multi-system Inflammatory Syndrome in Children) or multi-system organ failure induced by the cytokine storm. The Omicron variant has been shown to be highly mutable with a total of 50 point mutations - 36 of which are on the spike protein, making this the deadliest and most transmissible variant to date. 

![covid-variants-1500px jpg](https://user-images.githubusercontent.com/89358080/150033604-13497220-a62e-468e-b5cc-dd9f063cd0b4.jpg)

## Methods:

## __Source of Data__
Due to the effect SARS-CoV-2 has had on the world, an interest was taken in understanding how the virus will affect different communities. The goal was to create a predictive model looking at a variety of factors, including vaccination status, testing, comorbidities, etc... using this dataset on [Github](https://github.com/owid/covid-19-data/blob/master/public/data/README.md) and [this dataset](https://covid.ourworldindata.org/data/owid-covid-data.csv). After initial extraction, the data was transformed using Pandas, then it was loaded into a database using Postgres, and finally the data was [visualized using Tableau](https://public.tableau.com/app/profile/naftali.dubin5014/viz/CovidAnalysisTableauBook/MapDashboard?publish=yes). The random forest machine learning model will be used to start the analysis. The model was then used to determine the impact of COVID in communities. The purpose of the research is to see if there are any factors that could contribute to large outbreaks. 

The [Google Slides](https://docs.google.com/presentation/d/101htR5K1BQZjaQds0KX6pGQzegq2OEnil5-H-vAukYI/edit?usp=sharing) can be found here. 

## __Software__
- Python (sklearn, matplotlib)
- Jupyter Notebook
- Postgres SQL
- Tableau

## __Data Cleaning__  
1. Remove all iso codes starting with OWID because they are aggregated rows not counted rows  
2. Dropping all columns that start with excess because they are mostly null columns  
3. Dropped all columns with less than 10k rows of data  
4. Dropped cumulative columns because they are aggregated columns not counting up as they go along  
5. Dropped all columns with less than 1/2 their rows populated  
6. Dropped all smooth columns  
7. Dropped all na rows  
8. Dropped iso codes as it is redundant with Location  

## __Data Preprocessing__  
1. Removing the new_deaths column from DataFrame and setting it as X  
2. Using LabelEncode for Data and Location Columns  
3. Using the OneHotEncoder on continent  
4. Merging the encoded continent with our features DataFrame and dropping the continent column  
5. Using StandardScaler for all columns 

## __Data Training & Model Choice__

__RandomForestClassifier__ <br>
For our data analysis, we initially planned to use RandomForestClassifer to determine a country's predicted state of COVID risk. Our model is to forecast a future month's number of COVID deaths based on a number of features. We used __sklearn's model_selection__ module, imported __train_test_split__ class and used the default setting for testing & training sizes (75/25) . as our The features are as follows:

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

__Boosters & StackingRegressor__ <br>
We also experimented on using GradientBoosting & StackingRegressor on our New Deaths RandomForestRegression model to see if this positively or negatively affects our training & accuracy scores.

## __Results__
- Overall, many of the scores accumalated showed an accuracy score of close to 90% or higher. A variety of factors affected the transmission of COVID, an example being that the lower a countries GDP, there would be a larger percentage of the population under COVID 
### Training Scores
- The training score was approximately 0.989
### Accuracy Scores
- The coefficient of determination was approximately 94%
- In terms of new_deaths, the accuracy of the model was approximately 89.7%
- The predictions for new_cases was approximately 96.4% 

## ERD
<div align="center"> 

<img src = https://raw.githubusercontent.com/RobC30/COVID-Risk-Analysis/main/Resources/ERD_Datatypes.png width = 500 >

</div>
 
