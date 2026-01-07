# Group Differences in Student Performance (R)
## Overview
This project uses R to explore whether final mathematics performance differs meaningfully across selected student demographic and family-related groups. The analysis focuses on responsible exploratory data analysis and careful interpretation rather than causal inference.

---

## Executive Summary 
This analysis explored whether final mathematics performance (G3) differs meaningfully across parental education levels and sex. Exploratory visual analysis found no strong or consistent differences in final grades across either mother’s or father’s education levels. Median grades varied modestly across groups, with substantial overlap in grade distributions, indicating that individual variation outweighed group-level differences.

A complementary analysis comparing performance by sex identified a small difference in median grades, with male students exhibiting slightly higher median outcomes than female students. However, grade distributions overlapped considerably, and variability within groups remained high.

Overall, results suggest that while minor group-level differences may exist, final academic performance is not strongly differentiated by parental education or sex within this dataset. Findings are interpreted descriptively, and no causal claims are made.

---

## Dataset
The analysis uses the Student Performance (Mathematics) dataset, where each row represents an individual student. Variables include demographic characteristics, family background indicators, and academic outcomes. The primary outcome variable is final mathematics grade (G3).

---

## Methodology
- Imported and inspected semicolon-delimited data in R
- Converted categorical variables to factors with appropriate labels
- Used boxplots to compare grade distributions across groups
- Conducted a complementary analysis to contrast parental education with sex-based group differences.
- Interpreted results descriptively, avoiding unnessary hypothesis testing

---

## Key Findings
- No strong or consistent differences in final grades across parental education levels
- Substantial overlap in grade distributions across all education groups
- A small median difference by sex, with considerable overlap and variability
- Individual performance varies widely within all groups

---

## Tools Used
- R
- tidyverse (ggplot2, dplyr)

--- 
## Notes
This project is exploratory in nature. Results demonstrate analytical judgement, appropriate handling of categorical data, and responsible interpretation of group-level differences.
