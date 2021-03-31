*******************************************


/*
The purpose of this do file is to merge indicual ad men;s recode dataset for INDIA*
We are using the 2015-16 dataset.
The aim is to identify marginalization of women when intersected with caste/religion
*/
********************************************************************************
****************************************STEP I**********************************
********************DATA CLEANING AND MERGING WOMEN"S AND MEN"S DATA************
clear all
set more off
cd "C:\Users\jasle\Box Sync\GenderPRP\Data Analysis"


use "individualrecode"
** Dropping all variables related to children - the ones we do not need for sure **
drop b* v3* v4* v5* v6* v7* v8* d* i* s10* m* h*

** Renaming all v* variables to mv* so that we can merge them with men's recode
rename v* mv*
rename s116 sm118
 
** Creating a new variable called female = 1 - we know that all respondent's are women!
gen female = 1

**appending with men's recode
append using menrecode

*identify male gender*
replace female = 0 if female ==.



**********************************************************************************
********************STEP -II - ANALYSING MERGED DATA *****************************
*****************************
*Working with the appended dataset*

rename mv133 education

keep if mv130==1|mv130==2
gen muslim=0
replace muslim=1 if mv130==2
gen female_muslim = female*muslim

*If we choose to do the intersection with caste
keep if sm118 == 1| sm118 == 4
gen sc = 0
replace sc=1 if sm118 == 1
gen female_muslim_sc = female*muslim*sc

outsheet education female muslim female_muslim sc female_muslim_sc mv005 mv001 using menwomenR.csv, comma 


/*
*Regress education on gender
reg education female [pweight = mv005], cluster(mv001)
estimates store n1, title("Model1")

*Intersecting gender with religion*
reg education female muslim female_muslim [pweight = mv005], cluster(mv001)
estimates store n2, title("Model2")

*Intersecting gender with religion and caste*
reg education female muslim sc female_muslim_sc [pweight = mv005], cluster(mv001)
estimates store n3, title("Model3")


esttab n1 n2 n3 using "intersectionality_output.csv", replace cells(b(star fmt(3)) se(par fmt(2))) legend label varlabels(_cons Constant)

*/


********************************************************************
*************STEP 5 : GRAPHS ***************************************

/*
twoway (lpolyci infant_mor v190 if caste==1) (lpolyci infant_mor v190 if caste==0), ylabel(20(10)90) name(Wealth, replace)
twoway (lpolyci infant_mor height if caste==1 & height > = 145 & height <=170) (lpolyci infant_mor height if caste==0 & height <=170 & height >= 145), ylabel(20(10)90) name(Height, replace)
graph combine Wealth Height
graph save Figure1.png
*/

