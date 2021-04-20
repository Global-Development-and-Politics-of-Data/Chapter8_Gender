# Chapter8_Gender
This is the repository for Chapter 8 of the Data for Development Policy Research Project (PRP) 
The GitHub repository Chapter8_Gender has the following folders—

1.	Data 
This folder has the following original data

a.	Afghanistan_DHS (2015-16) — The Afghanistan Demographic Survey which is downloaded from www.dhsprogram.com.
Format of the data—
The dataset are in the .dta (STATA data format). The zip file contains the individual’s recode (data from women), men’s recode (data from men), couple’s recode (data for both men and women), household recode (data at the household level), birth recode (data for children).

b.	Ethiopia_DHS (2016) — The Ethiopia Demographic Survey which is downloaded from www.dhsprogram.com.
Format of the data—
The dataset are in the .dta (STATA data format). The zip file contains the individual’s recode (data from women), men’s recode (data from men), couple’s recode (data for both men and women), household recode (data at the household level), birth recode (data for children).

c.	India_DHS (2015-16) — The India Demographic Survey which is downloaded from www.dhsprogram.com.
Format of the data—
The dataset are in the .dta (STATA data format). The zip file contains the individual’s recode (data from women), men’s recode (data from men), couple’s recode (data for both men and women), household recode (data at the household level), birth recode (data for children).

d.	GII and GGG rankings — These are data downloaded from the World Economic forum and Human Development Reports.
Format of the data—
The data are stored in excel format.

e.	RankingAnalysisAndGGGRank — These data come from “Table 1 The Global Gender Gap Index 2020 rankings” of the Global Gender Gap 2020 Insight Report. See page 9.
Format of the data—
The data are stored in excel format. 

Note – In order to access the DHS survey data, the project needs to be registered. Once the project is registered and the data access is requested, dhs provides access to the datasets. These datasets cannot be shared with any other person than the co-authors who are registered for the project. Therefore, the DHS data has not been shared with the students. Students can register themselves at the dhsprogram.com and get access to the datasets. The data on rankings are public and hence shared.

2.	Data Analysis
This folder has the following manipulated data 

a.	Afghanistan
a.	Afghanistan empowerment Index — This excel file takes information from the Afghanistan DHS 2015-16 report. Using the imported information, it calculates the empowerment index for women in Afghanistan.
 
b.	India_Intersectionality
a.	Data Output: 
i.	Intersectionality_analysis — This is the cleaned India data produced from the 1st round of data cleaning and merging in step b.
ii.	menwomenR — This is the cleaned India data used to create the associated graphs. 
b.	Do Files: Womenmenintersectionality — This is a STATA do file that cleans and the individual and menrecode of India for the intersectionality analysis.
c.	Rmd Files: IntersectionalityGraph — This R markdown files takes the cleaned data, performs the intersectionality graphs for India and produces the necessary graphs that we see as end products in the chapter.
d.	Associated .Png files in the “Graphs” file:
i.	Gender — This is the graph that shows education level of men and women in India
ii.	Interaction_eth — This graph shows % bank ownership of men and women in Ethiopia by religion and type of residence (urban and rural).

c.	Ethiopia_Intersectionality
a.	Data Output: Intersectionality_eth — This is the cleaned Ethiopia data produced from the 1st round of data cleaning and merging in step b.
b.	Do Files: Intersectionality_eth — This is a STATA do file that cleans and the individual and menrecode of Ethiopia for the intersectionality analysis.
c.	Rmd: IntersectionalityGraph_eth — This R markdown files takes the cleaned data, performs the intersectionality graphs for Ethiopia and produces the necessary graphs that we see as end products in the data module.
d.	Associated .Png Files in the “Graphs” folder: 
i.	Interaction_eth — This graph shows % bank ownership of men and women in Ethiopia by religion and type of residence (urban and rural).
ii.	Gender_eth — This is the graph that shows % ownership of bank account in Ethiopia.

d.	Ranking Analysis
a.	Data Output: RankingAnalysis_clean — This is the cleaned GII and GGG ranking data produced from the 1st round of data cleaning and merging in step b.
b.	Rmd Files: 
i.	RankingAnalysisCleaning — This R Markdown file cleans and merges the GII and GGG data.
ii.	Ranking AnalysisGraph — This R Markdown file takes the cleaned data and produces the data visualization for the textbook chapter.
c.	Associated .Png files in the “Graphs” folder:
i.	RA_plot1 — This graph shows the top five GGG scores by country. 
ii.	RA_plot2 — This graph shows the bottom five GGG scores by country.
iii.	RA_plot3 — This graph shows the top five GII scores by country.
iv.	RA_plot4 — This graph shows the bottom five GII scores by country. 

3.	Graphs
This folder contains eight .Png files. Each file is associated with the India_Intersectionality, Ethiopia_Intersectionality, or Ranking Analysis sub-folder in the “Data Analysis” folder.  

4.	Write-ups 
This folder contains any extra material that we wrote up while collaborating. It has tables and templates for workflows.









