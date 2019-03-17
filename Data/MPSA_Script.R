# mydata <- RIO::import("~/Path/To/Data")  loads any kind of dataset
# How are missing values represented?
# e.g. if "-99" means missing, manually delete.
# 
# Numeric needs numnber; words, strings; words, categorical,
# but R calls them factors
# I might need to convert STR command STR(mydata), STR(mydata$variable) 
# to get specifics.

# Load MPSA Data
mpsa0 <- rio::import("~/Dropbox/AcademicWork/Projects/Inprogress/MPSA_CCES/Data/CCES18_UTB_OUTPUT.dta")
mpsa_df <- read_dta("CCES18_UTB_OUTPUT.dta") # reads the Stata data more accurately than RIO

# Now we can begin working on descriptive stats:
# e.g., table showing War Power Knowledge by Voter Registration

# Which branch of government declares war? (A: Congress)
mpsa_df$warknow <- factor(mpsa_df$UTB301,
                       levels = c(1, 2, 3, 4),
                       labels = c("The President", "Congress", "The Supreme Court", "Don't Know"))

mpsa_df$registered  <- factor (mpsa_df$votereg,
                               levels = c(1, 2, 3),
                               labels = c("yes", "No", "Don't Know"))

with(mpsa_df, table(mpsa_df$registered, mpsa_df$warknow))

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
# protection of ethnic and religious minorities
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

# The final set inquires about congress and foreign policy. 
# How important are each of the following factors when you decide whether or not to vote 
# in an election? Please rate each using a 0-10 scale, where 10 means extremely important, 
# 0 means not important at all, and 5 means medium importance.
# 
# NB: use ordered() because it's ranked 1-10.
# Stable International Order (UTB312)

mpsa_df$lio <- ordered(mpsa_df$UTB312,
						levels = c (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11),
						labels = c ("Not all important", , , , , , , , , , , "Extremely Important"))

# Promoting Human Rights (UTB313)

mpsa_df$prohumrts <- ordered(mpsa_df$UTB313,
						levels = c (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11),
						labels = c ("Not all important", , , , , , , , , , , "Extremely Important"))

# Competition With China (UTB314)

mpsa_df$sinocomp <- ordered(mpsa_df$UTB314,
						levels = c (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11),
						labels = c ("Not all important", , , , , , , , , , , "Extremely Important"))

# Competition with Russia (UTB315)

mpsa_df$russcomp <- ordered(mpsa_df$UTB315,
						levels = c (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11),
						labels = c ("Not all important", , , , , , , , , , , "Extremely Important"))

# Cybersecurity (UTB316)

mpsa_df$cybersec <- ordered(mpsa_df$UTB316,
						levels = c (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11),
						labels = c ("Not all important", , , , , , , , , , , "Extremely Important"))

# International Trade (UTB317)

mpsa_df$itntltrade <- ordered(mpsa_df$UTB317,
						levels = c (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11),
						labels = c ("Not all important", , , , , , , , , , , "Extremely Important"))

# Now I go back to the common questions from the CCES 2018 to get some relevant variables

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
						levels = c(1, 2, 3, 4)
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


# saved from prelim plotting in console. 
plot(mpsa_df$PID_3, mpsa_df$IRFcath)
plot(mpsa_df$PID_3, mpsa_df$IRFMusl)
plot(mpsa_df$PID_3, mpsa_df$IRFprot)
plot(mpsa_df$PID_3, mpsa_df$IRFall)
plot(mpsa_df$PID_3, mpsa_df$IRFathe)
plot(mpsa_df$PID_3, mpsa_df$sanctethnc)
plot(mpsa_df$PID_3, mpsa_df$sanctrelig)
plot(mpsa_df$PID_3, mpsa_df$sancthumrts)
plot(mpsa_df$PID_3, mpsa_df$milgenoc)
plot(mpsa_df$PID_3, mpsa_df$milhumrts)
plot(mpsa_df$PID_3, mpsa_df$milrelig)

## Below is scratch and not needed. Was bad practice and will remove. Keeping until I complete my reading as factor above.
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
