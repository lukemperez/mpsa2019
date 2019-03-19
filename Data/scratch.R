# Pulled from R script on 3-19-2019
# R pulls in data as factor when using read.dta and
# logit is wrong for variable bc UTB303 is ordered
# 
# My Questions
# Which branch of government declares war? (A: Congress)
mpsa_df$warknow <- factor(mpsa_df$UTB301,
                       levels = c(1, 2, 3, 4),
                       labels = c("The President", "Congress", "The Supreme Court", "Don't Know"))

## Clean up the order later, but leave the above for now and finish reading qq 302-317
# Which branch of government ratifies international treaties? (A: Congress)
mpsa_df$irknow <- factor(mpsa_df$UTB302,
						levels = c(1, 2, 3, 4),
						labels = c("Congress", "The President", "The Supreme Court", "Don't Know"))

# U.S. law allows for the use of sanctions against foreign countries who oppress religious minorities. 
# Such laws enhance or weaken national security:

mpsa_df$IRFsec <- factor(mpsa_df$UTB303,
						levels = c(1, 2, 3, 4, 5, 8),
						labels = c("Strongly Agree", "Somewhat Agree", "Somewhat Disagree", "Strongly Agree", "Don't Know", "Skipped"))

# Which Religious Groups do you think these laws protect: 
# Check all that apply:
# Catholics

mpsa_df$IRFcath <- factor(mpsa_df$UTB304_1,
						levels = c(1, 2),
						labels = c("selected", "not selected"))

# Protestants

mpsa_df$IRFprot <- factor(mpsa_df$UTB304_2,
						levels = c(1, 2),
						labels = c("selected", "not selected"))

# Muslims

mpsa_df$IRFMusl <- factor(mpsa_df$UTB304_3,
						levels = c(1,2),
						labels = c("selected", "not selected"))

# Atheists

mpsa_df$IRFathe <- factor(mpsa_df$UTB304_4,
						levels = c (1,2),
						labels = c("selected", "not selected"))

# Indigenous Peoples

mpsa_df$IRFindg <- factor(mpsa_df$UTB304_5,
						levels = c(1,2),
						labels = c ("selected", "not selected"))

# All of them

mpsa_df$IRFall <- factor(mpsa_df$UTB304_6,
						levels = c (1,2),
						labels = c ("selected", "not selected"))

# Don't know 

mpsa_df$IRFunkw <- factor(mpsa_df$UTB304_7,
						levels = c(1,2),
						labels = c("selected", "not selected"))

# Now we want to know how voters think about sanctions and military force for the 
# protection of ethnic and religious minorities.
#
# "Do you support or oppose each of the following proposals:"
# Sanctions to protect ethnic minorities in foreign countries

mpsa_df$sanctethnc <- factor(mpsa_df$UTB305,
						levels = c(1, 2, 3, 8),
						labels = c("Support", "Oppose", "Not Sure", "Skipped"))

# Sanctions to protect religious minorities in foreign countries

mpsa_df$sanctrelig <- factor(mpsa_df$UTB306,
						levels = c(1, 2, 3, 8),
						labels = c("Support", "Oppose", "Not Sure", "Skipped"))

# Sanctions to protect human rights in foreign countries

mpsa_df$sancthumrts <- factor(mpsa_df$UTB307,
						levels = c(1, 2, 3, 8),
						labels = c("Support", "Oppose", "Not Sure", "Skipped"))

# UTB 308--310 asks whether voters support military interventions for the same as above
# Do you support or oppose military intervention to prevent ethnic genocide in foreign countries?

mpsa_df$milgenoc <- factor(mpsa_df$UTB308,
						levels = c(1, 2, 3, 8),
						labels = c("Support", "Oppose", "Not Sure", "Skipped"))

# Do you support or oppose military intervention to prevent religious persecution in foreign countries?

mpsa_df$milrelig <- factor(mpsa_df$UTB309,
						levels = c(1, 2, 3, 8),
						labels = c("Support", "Oppose", "Not Sure", "Skipped"))

# Do you support or oppose military intervention to prevent or stop human rights violations in foreign countries?

mpsa_df$milhumrts <- factor(mpsa_df$UTB310,
						levels = c(1, 2, 3, 8),
						labels = c("Support", "Oppose", "Not Sure", "Skipped"))

# qq. 312--317 asks which of the following were important as they consider their 
# Stable International Order (UTB312)
# 
# NB: use ordered() because it's ranked 1-10.

mpsa_df$lio <- ordered(mpsa_df$UTB312,
						levels = c (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11),
						labels = c ("Not all important", , , , , , , , , , , "Extremely Important"))

# Promoting Human Rights (UTB313)

mpsa_df$prohumrts <- ordered(mpsa_df$UTB313,
						levels = c (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11),
						labels = c ("Not all important", , , , , , , , , , , "Extremely Important"))

# Competition With China (UTB314)

mpsa_df$sinocomp <- ordered(mpsa_df$UTB314,
						levels = c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11),
						labels = c("Not all important", , , , , , , , , , , "Extremely Important"))

# Competition with Russia (UTB315)

mpsa_df$russcomp <- ordered(mpsa_df$UTB315,
						levels = c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11),
						labels = c("Not all important", , , , , , , , , , , "Extremely Important"))

# Cybersecurity (UTB316)

mpsa_df$cybersec <- ordered(mpsa_df$UTB316,
						levels = c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11))#,
						#labels = c("Not all important", , , , , , , , , , , "Extremely Important"))

# International Trade (UTB317)

mpsa_df$itntltrade <- ordered(mpsa_df$UTB317,
						levels = c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11),
						labels = c("Not all important", , , , , , , , , , , "Extremely Important"))


# saved from prelim plotting in console. 
# plot(mpsa_df$PID_3, mpsa_df$IRFcath)
# plot(mpsa_df$PID_3, mpsa_df$IRFMusl)
# plot(mpsa_df$PID_3, mpsa_df$IRFprot)
# plot(mpsa_df$PID_3, mpsa_df$IRFall)
# plot(mpsa_df$PID_3, mpsa_df$IRFathe)
# plot(mpsa_df$PID_3, mpsa_df$sanctethnc)
# plot(mpsa_df$PID_3, mpsa_df$sanctrelig)
# plot(mpsa_df$PID_3, mpsa_df$sancthumrts)
# plot(mpsa_df$PID_3, mpsa_df$milgenoc)
# plot(mpsa_df$PID_3, mpsa_df$milhumrts)
# plot(mpsa_df$PID_3, mpsa_df$milrelig)

# Now we can begin our analysis.
# https://stats.idre.ucla.edu/r/dae/logit-regression/
# mylogit <- glm(Y ~ x1 + x2 + x3, data = mydata, family = "binomial")

# e.g., table showing War Power Knowledge by Voter Registration

mytab1 <- with(mpsa_df, table(mpsa_df$votereg, mpsa_df$UTB301))
mytab1
chisq.test(mytab1)

# War knowledge
mpsa_df$warknow <- mpsa_df$UTB301[mpsa_df$UTB301 != "Congress"]
str(warknow)
# logit on these variables (for practice)
logit1 <- glm(mpsa_df$UTB301 ~ mpsa_df$votereg, data = mpsa_df, family = "binomial")
logit1
summary(logit1)

# A harder case: UTB303: IRF laws make america safer
mytab2 <- with(mpsa_df, table(mpsa_df$UTB303))
mytab2
chisq.test(mytab2)
logit2 <- glm(mpsa_df$UTB303 ~ mpsa_df$UTB301 + mpsa_df$pid3 + mpsa_df$gender, data = mpsa_df, family = "binomial")
logit2
summary(logit2)

# Predicting support according to group: (excluded 304_7 "don't know" from regression)
logit3 <- glm(mpsa_df$UTB303 ~ mpsa_df$UTB304_6, data = mpsa_df, family = "binomial")
logit3
summary(logit3)

# mpsa_df$UTB304_1 + mpsa_df$UTB304_2 + mpsa_df$UTB304_3 + mpsa_df$UTB304_4 + mpsa_df$UTB304_5 + 

mytab3 <- with(mpsa_df, table(mpsa_df$UTB303, mpsa_df$UTB304_1))
mytab3
chisq.test(mytab3) # retain null: Catholics not significant

mytab3 <- with(mpsa_df, table(mpsa_df$UTB303, mpsa_df$UTB304_2))
mytab3
chisq.test(mytab3) # retain null: Protestants not significant, but only barely

mytab3 <- with(mpsa_df, table(mpsa_df$UTB303, mpsa_df$UTB304_3))
mytab3
chisq.test(mytab3) # reject null: Muslims significant, but warning

mytab3 <- with(mpsa_df, table(mpsa_df$UTB303, mpsa_df$UTB304_4))
mytab3
chisq.test(mytab3) # retain null: Atheists Peoples not significant

mytab3 <- with(mpsa_df, table(mpsa_df$UTB303, mpsa_df$UTB304_5))
mytab3
chisq.test(mytab3) # retain null: Indigenous not significant

mytab3 <- with(mpsa_df, table(mpsa_df$UTB303, mpsa_df$UTB304_6))
mytab3
chisq.test(mytab3) # Reject null: Catholics not significant


# Ok, now for the variables I need to know:
# Party ID in 3 and 7 level.
# Shouldn't pid3 be a ordered?

str(mpsa_df$pid7)
mpsa_df$pid7 <- as.factor(mpsa_df$pid7)
str(mpsa_df$pid7)

mytab4 <- with(mpsa_df, table(mpsa_df$UTB303, mpsa_df$pid7))
mytab4
chisq.test(mytab4)

# mpsa_df$pid7 <- ordered(mpsa_df$pid7,
#                          levels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 98),
#                          labels = c("Strong Democrat", "Not very strong Democrat", "Lean Democrat", "Independent", "Lean Republican", "Not Very Strong Republican", "Strong Republican", "Not Sure", "Don't Know", "Skipped"))


logit4 <- glm(mpsa_df$UTB303 ~ mpsa_df$pid7 * mpsa_df$gender, data = mpsa_df, family = "binomial")
logit4
summary(logit4)

# 3 level PID
logit5 <- glm(mpsa_df$UTB303 ~ mpsa_df$pid3 + mpsa_df$gender, data = mpsa_df, family = "binomial")
logit5
summary(logit5)

# Church attandence 
mytab5 <- with(mpsa_df, table(mpsa_df$UTB303, mpsa_df$pew_churatd))
mytab5
chisq.test(mytab5)

logit6 <- glm(mpsa_df$UTB303 ~ mpsa_df$pid3 + mpsa_df$pew_churatd + mpsa_df$gender, data = mpsa_df, family = "binomial")
logit6
summary(logit6)

logit7 <- glm(mpsa_df$UTB303 ~mpsa_df$pew_churatd + mpsa_df$pid3, data = mpsa_df, family=binomial(link = "logit"))
logit7

probit7 <- glm(mpsa_df$UTB303 ~mpsa_df$pew_churatd + mpsa_df$pid7, data = mpsa_df, family=binomial(link = "probit"))
summary(logit7)
summary(probit7)

####################################################
# Below is scratch and not needed.
# Was bad practice and will remove.
# Keeping until I complete data manipulation above.
####################################################

# Make a variable for each question
# Do I even need to do this or will I just use the "data$variable" qualifier in 
# my code?
# So I'm skipping the following because BA says it's not really needed and bad practice. 
# warknow <- mpsa2019$UTB301
# irknow <- mpsa2019$UTB302
# IRFsec <- mpsa2019$UTB303
# IRFcath <- mpsa2019$UTB304_1
# IRFprot <- mpsa2019$UTB304_2
# IRFmusl <- mpsa2019$UTB304_3
# IRFathe <- mpsa2019$UTB304_4
# IRFindg <- mpsa2019$UTB304_5
# IRFall <- mpsa2019$UTB304_6
# IRFunkw <- mpsa2019$UTB304_7
# SanctEth <- mpsa2019$UTB305
# SanctRel <- mpsa2019$UTB306
# SanctHum <- mpsa2019$UTB307
# MIDgenoc <- mpsa2019$UTB308
# MIDrelig <- mpsa2019$UTB309
# MIDhumrts <- mpsa2019$UTB310

# I want to use table() to get some basics, but I want to present the data
# with the labels so that instead of "1,2,3..." with freq count, R would 
# "Yes, Know, don't know, ..." or whatever label is there.


########################
# Other Scratch Notes
#######################
# mydata <- RIO::import("~/Path/To/Data")  loads any kind of dataset
# How are missing values represented?
# e.g. if "-99" means missing, manually delete.
# 
# Numeric needs numnber; words, strings; words, categorical,
# but R calls them factors
# I might need to convert STR command STR(mydata), STR(mydata$variable) 
# to get specifics.

# mpsa0 <- rio::import("~/Dropbox/AcademicWork/Projects/Inprogress/MPSA_CCES/Data/CCES18_UTB_OUTPUT.dta")

#######################################################
# Common Questions, but does not require transformation
#######################################################


# Transform dta numerical data into factor and ordered respectively.
# Common Questions
mpsa_df$registered  <- factor (mpsa_df$votereg,
                               levels = c(1, 2, 3),
                               labels = c("yes", "No", "Don't Know"))
# Job Approval for POTUS

mpsa_df$spprtPOTUS <- ordered(mpsa_df$CC18_308a,
						levels = c(1, 2, 3, 4, 5, 8),
						labels = c("Strongly Approve", "Somewhat Approve", "Somewhat Disapprove", "Strongly Disapprove", "Not Sure", "Skipped"))

# Job Approval for Congress

mpsa_df$spprtcong <- ordered(mpsa_df$CC18_308b,
						levels = c(1, 2, 3, 4, 5, 8),
						labels = c("Strongly Approve", "Somewhat Approve", "Somewhat Disapprove", "Strongly Disapprove", "Not Sure", "Skipped"))

# Job Approval for SCOTUS

mpsa_df$spprtSCOTUS <- ordered(mpsa_df$CC18_308c,
						levels = c(1, 2, 3, 4, 5, 8),
						labels = c("Strongly Approve", "Somewhat Approve", "Somewhat Disapprove", "Strongly Disapprove", "Not Sure", "Skipped"))

# Demographics
# Region

mpsa_df$reg <- factor(mpsa_rf$region, 
						levels = c(1, 2, 3, 4),
						labels = c("Northeast", "Midwest", "South", "West"))

# Birth Year
# Do I do anything for this? 

# Gender

mpsa_df$gend <- factor(mpsa_df$gender,
						levels = c(1, 2),
						labels = c("Male", "Female"))
#education

mpsa_df$edu <- ordered(mpsa_df$educ,
						levels = c(1, 2, 3, 4, 5, 6),
						labels = c("No HS", "High School Grad", "Some College", "2-year", "4-year", "Post-Grad"))
         
# Political Affiliations
# Do these go as factor or ordered?

mpsa_df$PID_3 <- factor(mpsa_df$pid3,
						levels = c(1, 2, 3, 4, 5),
						labels = c("Democrat", "Republican", "Independent", "Other", "Not Sure"))

mpsa_df$PID_7 <- ordered(mpsa_df$pid7,
						levels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 98),
						labels = c("Strong Democrat", "Not very strong Democrat", "Lean Democrat", "Independent", "Lean Republican", "Not Very Strong Republican", "Strong Republican", "Not Sure", "Don't Know", "Skipped"))


