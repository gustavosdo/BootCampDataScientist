# Question 1 -------------------------------------------------------------------
# Loading original dataset
dataset = read.csv(file = 'c:/Users/Luiz Gustavo/Documents/MEGA/Git/GitHub/BootCampDataScientist/Material/Modulo1/Trabalho Prático/COVID19/covid_19_data.csv',
                   stringsAsFactors = F)

# Selecting China entries
dataset = dataset[dataset$Country.Region == 'Mainland China', ]

# Aggregating by ObservationDate
Confirmed = c(); Deaths = c(); Recovered = c()
for (i in 1:length(unique(dataset$ObservationDate))) {
  date = unique(dataset$ObservationDate)[i]
  Confirmed[i] = sum(dataset$Confirmed[dataset$ObservationDate == date])
  Recovered[i] = sum(dataset$Recovered[dataset$ObservationDate == date])
  Deaths[i] = sum(dataset$Deaths[dataset$ObservationDate == date])
}
dataset = as.data.frame(unique(dataset$ObservationDate))
colnames(dataset)[1] = "ObservationDate"
dataset = cbind(dataset, Confirmed)
dataset = cbind(dataset, Recovered)
dataset = cbind(dataset, Deaths)

# Adding 'Active' column
dataset$Active = dataset$Confirmed - dataset$Deaths - dataset$Recovered

# Saving result
write.csv(dataset, "c:/Users/Luiz Gustavo/Documents/MEGA/Git/GitHub/BootCampDataScientist/Material/Modulo1/Trabalho Prático/COVID19/covid_19_data_china.csv")

# Question 2 -------------------------------------------------------------------
# Loading original dataset
dataset = read.csv(file = 'c:/Users/Luiz Gustavo/Documents/MEGA/Git/GitHub/BootCampDataScientist/Material/Modulo1/Trabalho Prático/COVID19/covid_19_data.csv',
                   stringsAsFactors = F)

# Selecting Italy entries
dataset = dataset[dataset$Country.Region == 'Italy', ]

# Aggregating by ObservationDate
Confirmed = c(); Deaths = c(); Recovered = c()
for (i in 1:length(unique(dataset$ObservationDate))) {
  date = unique(dataset$ObservationDate)[i]
  Confirmed[i] = sum(dataset$Confirmed[dataset$ObservationDate == date])
  Recovered[i] = sum(dataset$Recovered[dataset$ObservationDate == date])
  Deaths[i] = sum(dataset$Deaths[dataset$ObservationDate == date])
}
dataset = as.data.frame(unique(dataset$ObservationDate))
colnames(dataset)[1] = "ObservationDate"
dataset = cbind(dataset, Confirmed)
dataset = cbind(dataset, Recovered)
dataset = cbind(dataset, Deaths)

# Adding 'Active' column
dataset$Active = dataset$Confirmed - dataset$Deaths - dataset$Recovered

# Saving result
write.csv(dataset, "c:/Users/Luiz Gustavo/Documents/MEGA/Git/GitHub/BootCampDataScientist/Material/Modulo1/Trabalho Prático/COVID19/covid_19_data_italy.csv")

# Question 3 -------------------------------------------------------------------
# Loading original dataset
dataset = read.csv(file = 'c:/Users/Luiz Gustavo/Documents/MEGA/Git/GitHub/BootCampDataScientist/Material/Modulo1/Trabalho Prático/COVID19/covid_19_data.csv',
                   stringsAsFactors = F)

# Selecting Venezuela entries
dataset = dataset[dataset$Country.Region == 'Venezuela', ]

# Aggregating by ObservationDate
Confirmed = c(); Deaths = c(); Recovered = c()
for (i in 1:length(unique(dataset$ObservationDate))) {
  date = unique(dataset$ObservationDate)[i]
  Confirmed[i] = sum(dataset$Confirmed[dataset$ObservationDate == date])
  Recovered[i] = sum(dataset$Recovered[dataset$ObservationDate == date])
  Deaths[i] = sum(dataset$Deaths[dataset$ObservationDate == date])
}
dataset = as.data.frame(unique(dataset$ObservationDate))
colnames(dataset)[1] = "ObservationDate"
dataset = cbind(dataset, Confirmed)
dataset = cbind(dataset, Recovered)
dataset = cbind(dataset, Deaths)

# Adding 'Active' column
dataset$Active = dataset$Confirmed - dataset$Deaths - dataset$Recovered

# Saving result
write.csv(dataset, "c:/Users/Luiz Gustavo/Documents/MEGA/Git/GitHub/BootCampDataScientist/Material/Modulo1/Trabalho Prático/COVID19/covid_19_data_venezuela.csv")

# Question 4 -------------------------------------------------------------------
# Loading original dataset
dataset = read.csv(file = 'c:/Users/Luiz Gustavo/Documents/MEGA/Git/GitHub/BootCampDataScientist/Material/Modulo1/Trabalho Prático/COVID19/covid_19_data.csv',
                   stringsAsFactors = F)

# Selecting South Korea entries
dataset = dataset[dataset$Country.Region == 'South Korea', ]

# Aggregating by ObservationDate
Confirmed = c(); Deaths = c(); Recovered = c()
for (i in 1:length(unique(dataset$ObservationDate))) {
  date = unique(dataset$ObservationDate)[i]
  Confirmed[i] = sum(dataset$Confirmed[dataset$ObservationDate == date])
  Recovered[i] = sum(dataset$Recovered[dataset$ObservationDate == date])
  Deaths[i] = sum(dataset$Deaths[dataset$ObservationDate == date])
}
dataset = as.data.frame(unique(dataset$ObservationDate))
colnames(dataset)[1] = "ObservationDate"
dataset = cbind(dataset, Confirmed)
dataset = cbind(dataset, Recovered)
dataset = cbind(dataset, Deaths)

# Adding 'Active' column
dataset$Active = dataset$Confirmed - dataset$Deaths - dataset$Recovered

# Saving result
write.csv(dataset, "c:/Users/Luiz Gustavo/Documents/MEGA/Git/GitHub/BootCampDataScientist/Material/Modulo1/Trabalho Prático/COVID19/covid_19_data_skorea.csv")