#Libraries
library(tidyverse)
library(ggplot2)

#Density Graph - Run Duration per Gender

runPerGenderDensity <- runData %>%
  filter(Gender == "m" | Gender == "f") %>%
  ggplot(aes(x=TimeRound, fill=Gender)) + geom_density(alpha=0.5) + labs(title="Run Duration per Gender") + ylab("Density") + xlab("Run Duration") + scale_fill_discrete(labels=c("Female", "Male"))

runPerGenderDensity

#Box Plot - Run Duration per Study Program

#Variable name change for consistency
names(runData)[names(runData) == "Team"] <- "StudyProgram"

runPerStudyProgram <- runData %>%
  filter(StudyProgram == 'KuWi' | StudyProgram == "WiWi") %>%
  ggplot(aes(x=TimeRound, y=StudyProgram, fill=StudyProgram)) + geom_boxplot() + labs(title="Run Duration per Study Program") + xlab("Run Duration") + ylab("Study Program") 

runPerStudyProgram

