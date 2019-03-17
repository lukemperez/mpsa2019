# mydata <- RIO::import("~/Path/To/Data")  loads any kind of dataset
# How are missing values represented?
# e.g. if "-99" means missing, manually delete.
# 
# Numeric needs numnber; words, strings; words, categorical,
# but R calls them factors
# I might need to convert STR command STR(mydata), STR(mydata$variable) 
# to get specifics.

# Load MPSA Data
mpsa2019 <- rio::import("~/Dropbox/AcademicWork/Projects/Inprogress/MPSA_CCES/Data/CCES18_UTB_OUTPUT.dta")

# Make a variable for each question
# Do I even need to do this or will I just use the "data$variable" qualifier in 
# my code?

warknow <- mpsa2019$UTB301
irknow <- mpsa2019$UTB302
IRFsec <- mpsa2019$UTB303
IRFcath <- mpsa2019$UTB304_1
IRFprot <- mpsa2019$UTB304_2
IRFmusl <- mpsa2019$UTB304_3
IRFathe <- mpsa2019$UTB304_4
IRFindg <- mpsa2019$UTB304_5
IRFall <- mpsa2019$UTB304_6
IRFunkw <- mpsa2019$UTB304_7
SanctEth <- mpsa2019$UTB305
SanctRel <- mpsa2019$UTB306
SanctHum <- mpsa2019$UTB307
MIDgenoc <- mpsa2019$UTB308
MIDrelig <- mpsa2019$UTB309
MIDhumrts <- mpsa2019$UTB310

# I want to use table() to get some basics, but I want to present the data
# with the labels so that instead of "1,2,3..." with freq count, R would 
# "Yes, Know, don't know, ..." or whatever label is there.

