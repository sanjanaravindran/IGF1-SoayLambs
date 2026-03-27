# PLEASE READ THIS BEFORE USING THE DATA
This repository contains the data and code for our paper titled 'Plasma insulin-like growth-factor 1 (IGF-1) concentrations predict early life-history traits in a wild mammal'. The scripts are on Github (https://github.com/sanjanaravindran/IGF1-SoayLambs). For any questions, please contact Sanjana Ravindran (sravindr@ed.ac.uk).

The attached files contain data derived from the long term field project monitoring individual Soay sheep on St Kilda and their environment. This is a request to please let us know if you use them. Several people have spent the best part of their careers collecting the data. If you plan to analyse the data, there are a number of reasons why it would be very helpful if you could contact Dan Nussey (dan.nussey@ed.ac.uk) before doing so.
[NB. If you are interested in analysing the detailed project data in any depth you may find it helpful to have our full relational database rather than the file(s) available here. If so, then we have a simple process for bringing you onto the project as a collaborator.]
1) The data can be subject to change due to updates in the pedigree, merging of records, occasional errors and so on.
2) The data are complex and workers who do not know the study system may benefit from advice when interpreting it.
3) At any one time a number of people within the existing project collaboration are analysing data from this project. Someone else may already be conducting the analysis you have in mind and it is desirable to prevent duplication of effort.
4) In order to maintain funding for the project(s), every few years we have to write proposals for original analyses to funding agencies. It is therefore very helpful for those running the project to know what data analyses are in progress.
5) Individual identifiers may vary relative to other data archives from papers using the individual-level data.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#-------------------------------------------------------------------------#
### IGF-1 dataset description ###
Filename: IGF1_SoayLambs.csv
Variables:
ID: Sheep ID (anonymized)
SexF: Male = 0, Female = 1
Twin: Singleton = 0, Twin = 1
HornType: Normal, Polled or Scurred
Horn: Scurred=1, Polled=2, Normal=3
BirthYear: Birth Year of individual
BithWt: Birth Weight (or neonatal weight) of individual (in kg)
Age: Age of the individual (in days) 
MumID: ID of the mother (anonymized)
MumAge: Age of the mother (in years)
PopSize: Population size
IGF1: IGF1 concentration (in ng/ml)
PlateNumber: ELISA Plate Number
ELISA Run Date: ELISA Assay Date
StorageTime: Freezer storage time (in years) of plasma samples
CapHour_Tertiles: Sample Collection Time (Morning, Afternoon or Evening)
Weight: Weight of the individual (in kg) measured in August
ForeLeg: Length of the foreleg (in mm) measured in August
HornLen: Length of the horns (in mm) measured in AAugust
BredAsAYearling: Did not reproduce = 0, Reproduced = 1
Survival:  Died in the first year = 0, Survived first year = 1

Note: The parameter estimates obtained from re-running Bayesian models on your local computer may differ slightly from reported estimates.
