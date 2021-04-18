*******************************************


/*
The purpose of this do file is to merge indicual ad men;s recode dataset for ETHIOPIA*
We are using the 2015-16 dataset.
The aim is to identify marginalization of women when intersected with 
*/
********************************************************************************
****************************************STEP I**********************************
********************DATA CLEANING AND MERGING WOMEN"S AND MEN"S DATA************
clear all
set more off
cd "C:\Users\jasle\Box Sync\GenderPRP\Data Analysis"


use "individual_ethp"
** Dropping all variables related to children - the ones we do not need for sure **
drop b* v3* v4* v5* v6* v7* v8* d* i* s10* m* h*

** Renaming all v* variables to mv* so that we can merge them with men's recode
rename v* mv*
*rename s116 sm118
 
** Creating a new variable called female = 1 - we know that all respondent's are women!
gen female = 1

**appending with men's recode
append using men_ethp

*identify male gender*
replace female = 0 if female ==.



**********************************************************************************
********************STEP -II - ANALYSING MERGED DATA *****************************
*****************************
*Working with the appended dataset*

rename mv170 bankaccount
rename mv130 religion
rename mv025 residence

*religion*

keep if religion==1|religion==4
gen muslim=0
replace muslim=1 if religion==4
gen female_muslim = female*muslim

*region/residence - urban or rural *

gen rural =0
replace rural = 1 if residence==2
gen female_muslim_rural = female*muslim*rural

outsheet bankaccount female muslim female_muslim rural female_muslim_rural mv005 mv001 using menwomenR_ethp.csv, comma 



*Regress bankaccount on gender
reg bankaccount female [pweight = mv005], cluster(mv001)
estimates store n1, title("Model1")

*Intersecting gender with religion*
reg bankaccount female muslim female_muslim [pweight = mv005], cluster(mv001)
estimates store n2, title("Model2")

*Intersecting gender with religion and type of residence*
reg bankaccount female muslim rural female_muslim_rural [pweight = mv005], cluster(mv001)
estimates store n3, title("Model3")


esttab n1 n2 n3 using "intersectionality_eth.csv", replace cells(b(star fmt(3)) se(par fmt(2))) legend label varlabels(_cons Constant)





