---
title: "Search terms"
author: "Alex Fradera"
date: "15/06/2021"
output: 
  html_document: 
    keep_md: yes
---




# Population search terms
Not sure about this: do we need to specify Adult or just use in exclusion criteria?









# Pain search terms


# Cognitive screen search terms









## Raw search terms


Based on all the cognitive screens in the .csv file, we would need to search for these test names and referents.


```r
library(stringr)

test_full_names<- str_flatten(cog_screens$Test_Name,"\" OR \"")
test_abbreviations<- str_flatten(abbrevsonly$Abbreviation,"\" OR \"")
test_referents <- str_c("\"", test_full_names, "\" OR \"", test_abbreviations, "\"")
 writeLines(test_referents)
```

```
## "Clinical Dementia Rating Scale" OR "Extended Scale for Dementia" OR "Category Fluency - Set Test" OR "Cognisyst" OR "Alzheimer's Staging Scale" OR "Yokota Memory Test" OR "Confusion Assessment Method" OR "Trail making Test" OR "Cognitive Section of CAMDEX" OR "Functional Assessment Test" OR "Mental Alternation test" OR "Category and Letter Fluency" OR "Cognitive Drug Research" OR "Cognitive Screening Test" OR "Ottowa Mental Status Exam" OR "Rowland Universal Dementia Assessment Scale" OR "AD8" OR "CNS Vital Signs" OR "Cog Screen" OR "Cognitive Stability Index" OR "Cognitive Stability Index" OR "Cognometer" OR "Computer-Administered Neuropsychological Screen for Mild Cognitive Impairment (NB BATTERY)" OR "Global Clinical Scale" OR "Global Deterioration Scale" OR "Halifax Mental Status Scale" OR "Interactive-Voice Recognition Dementia Screen" OR "Mattis Dementia Rating Scale" OR "Medical Care Corporation" OR "Medical Decision Logic, Inc" OR "MemTrax" OR "MicroCog" OR "Milan Overall Dementia Assessment" OR "NetMet" OR "Neurotrax" OR "CogTest" OR "Cognistat" OR "Telephone Brief Screen for Cognitive Impairment" OR "Telephone-assessed Mental State" OR "Temporal Orientation" OR "St. Louis University Mental Status Examination" OR "Three words three shapes" OR "Brief Cognitive Rating Scale" OR "AB Cognitive Screen" OR "Brief Cognitive Scale" OR "Dementia Questionnaire" OR "Deterioration Cognitive Observee" OR "Modified WORLD Test" OR "Montpelier Screen" OR "Neurobehavioral Cognitive Status Examination OR Cognistat" OR "Rotterdam Version of the Cambridge Cognitive Examination" OR "Short Memory Questionnaire" OR "Short Portable Mental Status Questionnaire" OR "Symptoms of Dementia Screener" OR "Three Word Recall" OR "Minnesota Cognitive Acuity Screen" OR "CANS-MCI" OR "Extended Mini-Mental Assessment" OR "Telephone Interview of Cognitive Status-Modified" OR "Cognosis" OR "Cogstate" OR "MMSE-telephone version" OR "Rapid Dementia Screening Test" OR "Blessed Memory Test/Category Fluency" OR "Brief Alzheimer Screen" OR "Clifton Assessment Procedures for the Elderly - Cognitive Assessment Scale" OR "Delayed Word Recall Test" OR "Efficient Office-Based Assessment of Cognition" OR "Mild cognitive impairment screen" OR "Mini-Cog" OR "Short Cognitive Evaluation Battery" OR "Short Orientation Memory Concentration Test" OR "Six Item Screener" OR "Ten-item free recall with serial position effect analysis" OR "7-Minute Screen" OR "Cognitive Abilities Screening Instrument" OR "Cognitive Assessment Screening Test" OR "DemTect" OR "Short and Sweet Screening Instrument" OR "Time and Change" OR "Clock Drawing Test- Shulman" OR "Clock Drawing Test- Sunderland" OR "Informant Questionnaire on Cognitive Decline in the Elderly - Short Form" OR "Abbreviated Mental Test" OR "General Practitioner Assessment of Cognition" OR "Verbal Fluency" OR "Modified Mini-mental state examination" OR "Addenbrooke's Cognitive Examination" OR "Alzheimer Disease Assessment Scale Cognitive Subscale" OR "Benton's Visual Retention Test" OR "Chinese Abbreviated Mild Cognitive Impairment Test" OR "Isaacs Set Test" OR "Revised Hasegawa's Dementia Scale" OR "Standardized Mini-Mental State Examination" OR "Cognitive Capacity Screening Examination" OR "Short Test of Mental Status" OR "Montreal Cognitive Assessment" OR "Informant Questionnaire on Cognitive Decline in the Elderly" OR "Memory Impairment Screen" OR "Addenbrooke's Cognitive Examination Revised" OR "Mini Mental State Examination" OR "Indiana University Telephone-Based Assessment of Neuropsychological Status" OR "IntegNeuro" OR "Hopkins Verbal Learning Test" OR "High Sensitivity Cognitive Screen" OR "Cambridge Cognitive Examination" OR "The Repeatable Battery for the Assessment of Neuropsychological Status" OR "Visual association test" OR "Mini-ACE" OR "TELE" OR "CDR" OR "TMT" OR "CAMDEX" OR "AD8" OR "DRS" OR "SLU" OR "ABCS" OR "BCS" OR "DQ" OR "DECO" OR "WORLD" OR "Mont" OR "NCSE" OR "R-CAMCOG" OR "SMQ" OR "SPMSQ" OR "SDS" OR "3WR" OR "MCAS" OR "CANS-MCI" OR "EMA" OR "TICS-M" OR "RDST" OR "BAS" OR "Mini-Cog" OR "S-OMC, 6-CIT, Short Blessed Test" OR "SIS" OR "7MS" OR "CASI" OR "CAST" OR "DemTect" OR "SASSI" OR "T&C" OR "CDT" OR "CDT" OR "IQCODE-SF" OR "AMT" OR "GPCOG" OR "3MS" OR "ACE" OR "ADAS-cog" OR "BVRT" OR "CAMCI" OR "IST" OR "HDS-R" OR "S-MMSE" OR "CCSE" OR "STMS" OR "MoCA" OR "IQCODE" OR "MIS" OR "ACE-R" OR "MMSE" OR "HVLT" OR "CAMCOG" OR "M-ACE"
```
In other words:

"Clinical Dementia Rating Scale" OR "Extended Scale for Dementia" OR "Category Fluency - Set Test" OR "Cognisyst" OR "Alzheimer's Staging Scale" OR "Yokota Memory Test" OR "Confusion Assessment Method" OR "Trail making Test" OR "Cognitive Section of CAMDEX" OR "Functional Assessment Test" OR "Mental Alternation test" OR "Category and Letter Fluency" OR "Cognitive Drug Research" OR "Cognitive Screening Test" OR "Ottowa Mental Status Exam" OR "Rowland Universal Dementia Assessment Scale" OR "AD8" OR "CNS Vital Signs" OR "Cog Screen" OR "Cognitive Stability Index" OR "Cognitive Stability Index" OR "Cognometer" OR "Computer-Administered Neuropsychological Screen for Mild Cognitive Impairment (NB BATTERY)" OR "Global Clinical Scale" OR "Global Deterioration Scale" OR "Halifax Mental Status Scale" OR "Interactive-Voice Recognition Dementia Screen" OR "Mattis Dementia Rating Scale" OR "Medical Care Corporation" OR "Medical Decision Logic, Inc" OR "MemTrax" OR "MicroCog" OR "Milan Overall Dementia Assessment" OR "NetMet" OR "Neurotrax" OR "CogTest" OR "Cognistat" OR "Telephone Brief Screen for Cognitive Impairment" OR "Telephone-assessed Mental State" OR "Temporal Orientation" OR "St. Louis University Mental Status Examination" OR "Three words three shapes" OR "Brief Cognitive Rating Scale" OR "AB Cognitive Screen" OR "Brief Cognitive Scale" OR "Dementia Questionnaire" OR "Deterioration Cognitive Observee" OR "Modified WORLD Test" OR "Montpelier Screen" OR "Neurobehavioral Cognitive Status Examination OR Cognistat" OR "Rotterdam Version of the Cambridge Cognitive Examination" OR "Short Memory Questionnaire" OR "Short Portable Mental Status Questionnaire" OR "Symptoms of Dementia Screener" OR "Three Word Recall" OR "Minnesota Cognitive Acuity Screen" OR "CANS-MCI" OR "Extended Mini-Mental Assessment" OR "Telephone Interview of Cognitive Status-Modified" OR "Cognosis" OR "Cogstate" OR "MMSE-telephone version" OR "Rapid Dementia Screening Test" OR "Blessed Memory Test/Category Fluency" OR "Brief Alzheimer Screen" OR "Clifton Assessment Procedures for the Elderly - Cognitive Assessment Scale" OR "Delayed Word Recall Test" OR "Efficient Office-Based Assessment of Cognition" OR "Mild cognitive impairment screen" OR "Mini-Cog" OR "Short Cognitive Evaluation Battery" OR "Short Orientation Memory Concentration Test" OR "Six Item Screener" OR "Ten-item free recall with serial position effect analysis" OR "7-Minute Screen" OR "Cognitive Abilities Screening Instrument" OR "Cognitive Assessment Screening Test" OR "DemTect" OR "Short and Sweet Screening Instrument" OR "Time and Change" OR "Clock Drawing Test- Shulman" OR "Clock Drawing Test- Sunderland" OR "Informant Questionnaire on Cognitive Decline in the Elderly - Short Form" OR "Abbreviated Mental Test" OR "General Practitioner Assessment of Cognition" OR "Verbal Fluency" OR "Modified Mini-mental state examination" OR "Addenbrooke's Cognitive Examination" OR "Alzheimer Disease Assessment Scale Cognitive Subscale" OR "Benton's Visual Retention Test" OR "Chinese Abbreviated Mild Cognitive Impairment Test" OR "Isaacs Set Test" OR "Revised Hasegawa's Dementia Scale" OR "Standardized Mini-Mental State Examination" OR "Cognitive Capacity Screening Examination" OR "Short Test of Mental Status" OR "Montreal Cognitive Assessment" OR "Informant Questionnaire on Cognitive Decline in the Elderly" OR "Memory Impairment Screen" OR "Addenbrooke's Cognitive Examination Revised" OR "Mini Mental State Examination" OR "Indiana University Telephone-Based Assessment of Neuropsychological Status" OR "IntegNeuro" OR "Hopkins Verbal Learning Test" OR "High Sensitivity Cognitive Screen" OR "Cambridge Cognitive Examination" OR "The Repeatable Battery for the Assessment of Neuropsychological Status" OR "Visual association test" OR "Mini-ACE" OR "TELE" OR "CDR" OR "TMT" OR "CAMDEX" OR "AD8" OR "DRS" OR "SLU" OR "ABCS" OR "BCS" OR "DQ" OR "DECO" OR "WORLD" OR "Mont" OR "NCSE" OR "R-CAMCOG" OR "SMQ" OR "SPMSQ" OR "SDS" OR "3WR" OR "MCAS" OR "CANS-MCI" OR "EMA" OR "TICS-M" OR "RDST" OR "BAS" OR "Mini-Cog" OR "S-OMC, 6-CIT, Short Blessed Test" OR "SIS" OR "7MS" OR "CASI" OR "CAST" OR "DemTect" OR "SASSI" OR "T&C" OR "CDT" OR "CDT" OR "IQCODE-SF" OR "AMT" OR "GPCOG" OR "3MS" OR "ACE" OR "ADAS-cog" OR "BVRT" OR "CAMCI" OR "IST" OR "HDS-R" OR "S-MMSE" OR "CCSE" OR "STMS" OR "MoCA" OR "IQCODE" OR "MIS" OR "ACE-R" OR "MMSE" OR "HVLT" OR "CAMCOG" OR "M-ACE"


*Note:* in fact some of the screeners names will need to be amended with wildcards.

## Putting search terms into readable contexts

### EBSCO Host
