# COVID-Risk-Analysis Project  

## Background:

In 2019, the world was exposed to SARS-CoV-2 creating a global panic which devastated the world; socially, politically and economically. To understand the deadly disease one must understand the morphology of SARS-CoV-2, specially the spike glycoprotein. The spike protein fuses to the cell membrane by binding to the N terminal and entering the cell where the virus is replicated. There have been other outbreaks of viruses with spike proteins, such as SARS and MERS, which also carry the spike protein. Many biological factors which lead to this global pandemic such as the high transmissibility of the virus as well as deadly complication such as MIS-C(multi system inflammatory syndrome in children) or multi system organ failure induced by the cytokine storm. Omicron has been shown to be highly mutable with a total of 50 point mutations - 36 of which are on the spike protein making this the deadliest and most transmissible variant to date.

![covid-variants-1500px jpg](https://user-images.githubusercontent.com/89358080/150033604-13497220-a62e-468e-b5cc-dd9f063cd0b4.jpg)

## Methods:

Due to the effect SARS-CoV-2 has had on the world, we are interested in understanding how the virus will affect different communities. The goal was to create a predictive model looking at a variety of factors, including vaccination status, testing, comorbidities, etc... using this dataset on [Github](https://github.com/owid/covid-19-data/blob/master/public/data/README.md) and [this dataset](https://covid.ourworldindata.org/data/owid-covid-data.csv). After initial extraction, we then transformed the data using Pandas, loaded it into a database using Postgres, and finally visualized the data using Tableau. The random forest machine learning model will be used to start the analysis.The model was then used to determine the impact of COVID in communities. The purpose of the research is to see if there are any factors that could contribute to large outbreaks. 


The [Google Slides](https://docs.google.com/presentation/d/101htR5K1BQZjaQds0KX6pGQzegq2OEnil5-H-vAukYI/edit?usp=sharing) can be found here. 



## ERD
<div align="center"> 

<img src = https://raw.githubusercontent.com/RobC30/COVID-Risk-Analysis/main/Resources/ERD.png width = 500 >

</div>
 
