#load packages
library(tidyverse);library(lubridate);library(here);library(ggplot2);
library(cowplot);library(knitr); library(agricolae);library(dplyr)
library(here)
salmon_data <- read.csv(here("Final Project","WDFW-SGS_20231022.csv"),
  stringsAsFactors = TRUE)%>% 
  mutate(SurveyDate = mdy(SurveyDate))%>%
  select(-c(3,4,8,9,16,17:27,28,30,31,33:35,37:40,42:59))%>%
  filter(RunYear>=1970)