# Preparing datasets for PowerBI challenge from Chapter 1 ----------------------

# Cleaning environment
rm(list = ls()); gc()
verbose = F

# Loading original dataset
dataset = read.csv("C:/Users/Luiz Gustavo/Documents/MEGA/Git/GitHub/BootCampDataScientist/Material/Modulo1/Desafio/stackoverflow_data/survey_results_public.csv",
                   stringsAsFactors = F)

# Preparing France salaries barplot
columns_fr = c("ConvertedComp", "EdLevel", "Country")
france_salary = dataset[,columns_fr]
france_salary = france_salary[france_salary$Country == 'France',]
salaries = data.frame(EdLevel = unique(france_salary$EdLevel), Salary = rep(NA, length(unique(france_salary$EdLevel))))
for (ed in unique(france_salary$EdLevel)) {
  if (verbose) {message(ed)}
  if (is.na(ed)) {
    mean_salary = mean(france_salary$ConvertedComp[is.na(france_salary$EdLevel)], na.rm = T)
    salaries$Salary[is.na(salaries$EdLevel)] = mean_salary
  } else {
    mean_salary = mean(france_salary$ConvertedComp[france_salary$EdLevel == ed], na.rm = T)
    salaries$Salary[salaries$EdLevel == ed] = mean_salary
  }
  if (verbose) {message(paste("Mean salary for", ed, "is", mean_salary))}
}
write.csv(x = salaries, file = "C:/Users/Luiz Gustavo/Documents/MEGA/Git/GitHub/BootCampDataScientist/Material/Modulo1/Desafio/salaries_france.csv")

# Preparing Chile salaries barplot
columns_ch = c("ConvertedComp", "JobSat", "Country")
chile_salary = dataset[,columns_ch]
chile_salary = chile_salary[chile_salary$Country == 'Chile',]
salaries = data.frame(JobSat = unique(chile_salary$JobSat), Salary = rep(NA, length(unique(chile_salary$JobSat))))
for (sat in unique(chile_salary$JobSat)) {
  if (verbose) {message(sat)}
  if (is.na(sat)) {
    mean_salary = mean(chile_salary$ConvertedComp[is.na(chile_salary$JobSat)], na.rm = T)
    salaries$Salary[is.na(salaries$JobSat)] = mean_salary
  } else {
    mean_salary = mean(chile_salary$ConvertedComp[chile_salary$JobSat == sat], na.rm = T)
    salaries$Salary[salaries$JobSat == sat] = mean_salary
  }
  if (verbose) {message(paste("Mean salary for", sat, "is", mean_salary))}
}
write.csv(x = salaries, file = "C:/Users/Luiz Gustavo/Documents/MEGA/Git/GitHub/BootCampDataScientist/Material/Modulo1/Desafio/salaries_chile.csv")