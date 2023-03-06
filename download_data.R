library("tidyverse")

# raw_data <- read.csv("data/table_219.csv")

inUrl1  <- "https://pasta.lternet.edu/package/data/eml/knb-lter-pal/219/5/002f3893385f710df69eeebe893144ff" 
infile1 <- tempfile()
try(download.file(inUrl1,infile1,method="curl"))
if (is.na(file.size(infile1))) download.file(inUrl1,infile1,method="auto")
dt1 <-read.csv(infile1,header=F 
               ,skip=1
               ,sep=","  
               ,quot='"' 
               , col.names=c(
                 "studyName",     
                 "Sample.Number",     
                 "Species",     
                 "Region",     
                 "Island",     
                 "Stage",     
                 "Individual.ID",     
                 "Clutch.Completion",     
                 "Date.Egg",     
                 "Culmen.Length",     
                 "Culmen.Depth",     
                 "Flipper.Length",     
                 "Body.Mass",     
                 "Sex",     
                 "Delta.15.N",     
                 "Delta.13.C",     
                 "Comments"    ), check.names=TRUE)

dt1 |>
  rename("id" = "studyName")