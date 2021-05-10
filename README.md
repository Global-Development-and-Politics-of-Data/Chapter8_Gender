# Chapter8_Gender
This is the repository for Chapter 8 of the Data for Development Policy Research Project (PRP) 
This repository contains the following files:
  * Data
  * Data Analysis
  * Graphs
  * Write-ups
  
 # Data
 This folder contains *almost* all raw, unedited data files. 
 
 ## Gender Indices and Ranking Analysis Files
 Section three references the Gender Development Index (GDI) and Global Inequality Index (GII) and contains a data visualization which compares the GGG and GII neasures. The following raw data files were used to create this data visualization.
  * "Gender Development Index_AllYears.xlsx"
    * These data come from the [United Nations Gender Development Index](http://hdr.undp.org/en/content/gender-development-index-gdi).
  * "Gender Inequality Index_2019.xlsx"
    * These data come from the [United Nations Human Development Report](http://hdr.undp.org/en/content/gender-inequality-index-gii). Format of the data: The data are stored in excel format.
  * "Gender Inequality Index_AllYears.xlsx"
    * These data come from the [United Nations Human Development Report](http://hdr.undp.org/en/content/gender-inequality-index-gii). Format of the data: The data are stored in excel format. 
  * "Global Gender Gap_AllYears.xlsx"
    * These data come from the [World Economic Forum](https://www.weforum.org/reports/global-gender-gap-report-2021). Format of the data: The data are stored in excel format.
  * "RankingAnalysisAndGGGRank.xlsx"
    * These data come from These data come from “Table 1 The Global Gender Gap Index 2020 rankings” of the [Global Gender Gap 2020 Insight Report](http://www3.weforum.org/docs/WEF_GGGR_2021.pdf). See page 9. Format of the data: The data are stored in excel format.

## Demographic Health Survey Files
Section 3 and the data module contain data visualizations based on Demographic Health Survey (DHS) data for Afghanistan, India, and Ethiopia. DHS surveys cannot be shared publicly. However, they are free and accesible to anyone that registers for them at www.dhsprogram.com. DHS files can be viewed and edited by whoever registers and downloads DHS files of his or her intrest. We accesed the following files:
  * Afghanistan_DHS (2015-16)
    * The Afghanistan DHS is downloaded from www.dhsprogram.com/. Format of the data: The dataset are in the .dta (STATA data format). The zip file contains the individual’s recode (data from women), men’s recode (data from men), couple’s recode (data for both men and women), household recode (data at the household level), birth recode (data for children).
  * Ethiopia_DHS (2016)
    * The Ethiopia DHS is downloaded from www.dhsprogram.com/. Format of the data: The dataset are in the .dta (STATA data format). The zip file contains the individual’s recode (data from women), men’s recode (data from men), couple’s recode (data for both men and women), household recode (data at the household level), birth recode (data for children).
  * India_DHS (2015-16) 
    * The India DHS is downloaded from www.dhsprogram.com/. Format of the data: The dataset are in the .dta (STATA data format). The zip file contains the individual’s recode (data from women), men’s recode (data from men), couple’s recode (data for both men and women), household recode (data at the household level), birth recode (data for children).

# Data Analysis
This folder contains manipulated or edited data. 

## Afghanistan
The data module's second question is based on the Afghanistan (2015-2016) DHS report. This folder contains data analysis files for the second question of the data module. 
 * "AfghanistanEmpowermentIndex.xlsx"
   * These data come from the Afghanistan (2015-2016) DHS report. Format of the data: The data are stored in excel format. These data were used to create the author-made gender empowerment index for the data module.

## Intersectionality_Ethiopia
The data module's first question includes a graph made up of data from the Ethiopia (2016) DHS report. This folder contains the edited data that makes up this graph, a replication file for conducting the data analysis that this graph is based on, and a replication file for recreating the graph. 
* "IntersectionalityGraph_ethp.Rmd"
   *  This is the replication file for creating the graph in module question #1. With this replication file and "intersectionality_eth.csv" file the graph in module question #1 can be replicated. 
* "intersectionality_eth.csv"
   * This is the edited data that makes up the graph in module question #1.
* "intersectionality_ethp.do"
   * This is the replication file to recreate the data analysis and edited data ("intersectionality_eth.csv") that makes up the graph in module question #1. Note: to replicate the graph in module question #1, users must first download the Ethiopia (2016) DHS data independently. 

## Intersectionality_India
Section 3 contains a data visualization based on raw data from the India (2015-2016) DHS data. This folder contains a replication file to recreate the data visualization in section 3, the data file used to conduct the analysis which the visualization diplays, the data file which contains the output of the analysis which the visualization displays, the data file which contains the data used to conduct analysis and create the output which the visualization displays, and the replication file to analyze the raw data that the visualization is based on. 
* "IntersectionalityGraph.Rmd"
  * This is the replication file for creating the data visualization in section 3.
* "intersectionality_analysis.csv"
  *  This file was used to conduct the data analysis that the data visualization in section 3 is based on.
* intersectionality_output.csv"
  * This file contains the output from the data analysis that the data visualization is section 3 is based on.
* "menwomenR.csv"
  * This file contains the data that makes up the data visualization in section 3.
* "womenmen_intersectionality.do"
  * This is the replication for conducting the data analysis and output which the data visualization in section 3 is based on. 

## Ranking Analysis
Section 3 contains a data visualization based on data from the Gender Development Index (GDI) and Gender Inequality Index (GII). This folder contains a replication file for cleaning the raw data that the data visualization in section 3 is based on, a replication file that recreates the data visualization, and the cleaned data that makes up the data visualization in section 3.
* "RankingAnalysisCleaning.Rmd"
  * This is the replication file for cleaning the raw data that the visualization in section 3 is based on.
* "RankingAnalysisGraph.Rmd"
  * This is replication file for recreating the data visualization in section 3. 
* "RankingAnalysis_clean.csv"
  * This is the cleaned data that the data visualization in section 3 is based on. Using this data file and the replication file, users can recreate the data visualization in section 3. 


# Graphs
This folder contains .png files of the data visualizations included in the chapter and data module.
* "GGG_plot.png"
  * This is the GGG comparison plot in section 3 of the chapter. 
* "GII_plot.png"
  * This is the GII comparison plot in section 3 of the chapter.
* "Gender_Eth.png"
  * This is the bank ownership graph (non-interaction) for the Ethiopia example in question 1 in the data module.
* "Interaction.png"
  * This is the intraction graph for the India example in section 3 of the chapter.
* "Interaction_eth.png"
  * This is the interaction graph for the Ethiopia example in question 1 of the data module. 

# Writeups
This folder contains other files, like the chapter and data module workflows.











