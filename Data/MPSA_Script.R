# Set Working Directory
setwd("~/Dropbox/AcademicWork/Projects/Inprogress/MPSA_CCES/Data")
# 
# Load libraries
library(foreign, stargazer)

# Load MPSA Data
mpsa_df <- read.dta("CCES18_UTB_OUTPUT.dta") 

# Start with my questions:
# QQ UTB 301-302 need to be reformed into a binary variable such that the correct answer, "Congress," 
# yields a "1" and all others yield a "0".

# Read UTB303 "IRF Security" as ordered
mpsa_df$UTB303 <- ordered(mpsa_df$UTB303)

# QQ. UTB304_1-UTB304_7 needs to be reformed such that "selected" yields as "1" and "not selected" yields a "2"

# QQ. UTB305-UTB310 needs to reformed such that support yields "1", oppose yeilds "0", and "not sure" and "skipped" are dropped

# QQ. UTB312-317 needs to be reforemd such that it is read as ordered. 

# Now we can work on the control variables
# Both pid3 and pid7 need to be resorted such that Republican is highest, Independents are in the middle, and Democrats lowest.
## I think I recall that standard practice is to treat D as higher value, but I suspect Rs will track with support.

# Q. gender needs to be transformed so that female yields "1", male "0", and "skipped" yields an NA
# The gender question should be a categorical variable

# Education should be ordered, not factor.

mpsa_df$educ <- ordered(mpsa_df$educ)

# Data Analysis, remember to think carefully re control variables
# https://stackoverflow.com/questions/25711041/r-linear-regression-control-for-a-variable
# Looks like adding an asterisk. e.g., glm(data ~ mpsa_df$UTB303*mpsa_df$pew_churatd, data = mpsa_df, family = "binomial")