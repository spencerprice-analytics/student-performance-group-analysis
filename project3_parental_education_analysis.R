# Load the required packages
library(tidyverse)

# Import the dataset (semicolon-separated)
student <- read.csv("C:/Users/soxro/OneDrive/Desktop/All Files/Spencer Folder/Portfolio Resources/student-mat.csv", sep = ";")

# Structural Check
str(student)

#convert parental education to factors (ordinal categories)
student$Medu <- factor(
  student$Medu, 
  levels = c(0,1,2,3,4), 
  labels = c(
    "None",
    "Primary",
    "Lower Secondary",
    "Upper Secondary", 
    "Higher Education"
  )
)

student$Fedu <- factor(
  student$Fedu, 
  levels = c(1,2,3,4), 
  labels = c(
    "Primary",
    "Lower Secondary",
    "Upper Secondary", 
    "Higher Education"
  )
)

#producing boxplots for parental education, using final grades against education level
ggplot(student, aes(x = Medu, y = G3)) + 
  geom_boxplot() + 
  labs(
    title = "Final Mathematics Grade (G3) by Mother's Education Level",
    x = "Mother's Education Level", 
    y = "Final Grade (G3)"
  )

ggplot(
  subset(student, !is.na(Fedu)), 
         aes(x = Fedu, y = G3)) +
  geom_boxplot() + 
  labs(
    title = "Final Mathematics Grade (G3) by Father's Education Level",
    x = "Father's Education Level", 
    y = "Final Grade (G3)"
  )

#additional testing for the categorical variable 'sex'
#convert to factor
student$sex <- factor(
  student$sex, 
  levels = c("F", "M"), 
  labels = c("Female", "Male")
)

#plotting G3 by sex
ggplot(student, aes(x = sex, y = G3)) +
  geom_boxplot() + 
  labs(
    title = "Final Mathematics Grade (G3) by Sex", 
    x = "Sex", 
    y = "Final Grade (G3)"
  )
