# __COVID-Risk-Analysis Project__

## Background:

In 2019, the world was exposed to SARS-CoV-2, creating a global panic which devastated the world in all aspects: socially, politically and economically. To understand the deadly disease one must understand the morphology of SARS-CoV-2, specifically the spike glycoprotein. The spike protein fuses to the cell membrane by binding to the N terminal and entering the cell to where the virus is replicated. There have been other outbreaks of viruses with spike proteins, such as SARS and MERS. Many biological factors have lead to this global pandemic, such as the high transmissibility of the virus as well as deadly complications such as MIS-C(Multi-system Inflammatory Syndrome in Children) or multi-system organ failure induced by the cytokine storm. The Omicron variant has been shown to be highly mutable with a total of 50 point mutations - 36 of which are on the spike protein, making this the deadliest and most transmissible variant to date.

![covid-variants-1500px jpg](https://user-images.githubusercontent.com/89358080/150033604-13497220-a62e-468e-b5cc-dd9f063cd0b4.jpg)

## Methods:

Due to the effect SARS-CoV-2 has had on the world, an interest was taken in understanding how the virus will affect different communities. The goal was to create a predictive model looking at a variety of factors, including vaccination status, testing, comorbidities, etc... using this dataset on [Github](https://github.com/owid/covid-19-data/blob/master/public/data/README.md) and [this dataset](https://covid.ourworldindata.org/data/owid-covid-data.csv). After initial extraction, the data was transformed using Pandas, then it was loaded into a database using Postgres, and finally the data was visualized using Tableau. The random forest machine learning model will be used to start the analysis. The model was then used to determine the impact of COVID in communities. The purpose of the research is to see if there are any factors that could contribute to large outbreaks. 

Hiyab_branch
The [Google Slides](https://docs.google.com/presentation/d/101htR5K1BQZjaQds0KX6pGQzegq2OEnil5-H-vAukYI/edit?usp=sharing) can be found here. 

## __Data Cleaning__

## __Data Fea

## __Data Training__

## Model Choice
- planned to use randomforestclassifer first to determine bad worse worst - considered bucketing
- changed to randomforestregression for time series data, captures seasonalities
- used new_deaths as target variable first
- experimented with new_cases next
- used boosters for both

## Results
- Overall, many of the scores accumalated showed an accuracy score of close to 90% or higher. A variety of factors affected the transmission of COVID, an example being that the lower a countries GDP, there would be a larger percentage of the population under COVID 
### Training Scores
- The training score was approximately 0.989
### Accuracy Scores
- The coefficient of determination was approximately 94%
- In terms of new_deaths, the accuracy of the model was approximately 89.7%
- The predictions for new_cases was approximately 96.4% 
## ERD

## ERD
<div align="center"> 

<img src = https://raw.githubusercontent.com/RobC30/COVID-Risk-Analysis/main/Resources/ERD.png width = 500 >

</div>
 
