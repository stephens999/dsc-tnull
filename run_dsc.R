library(dscr)

dsc_tnull = new.dsc("tnull","dsc-tnull-files")

source("scenarios.R")
source("methods.R")
source("score.R")
addScore(dsc_tnull,score,name="score",outputtype="output")

res=run_dsc(dsc_tnull)
save(res,file="res.RData")

source("summarize.R")


