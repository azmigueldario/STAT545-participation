## simple calculations using the script
4+4*2
4/2+6*4-1


code<-4*9/2 ## asigning to an object 
code*3/2
cide*2 # arithmetic on variable not assigned


time <- 56 # commute time asigned to an object
time <- c(56,97,98) # multiple objects require use of c()
times <- c(seq(20,240, by=15))# sequence asigned
hours <- time/60

#functions 
range(hours)
sqrt(time) # range and square root function

#logicals evaluation
times<90 & times>60  # combine use & (AND) or | (OR)
?which # evaluates logical condition
which (times<90 & times>60 )

# any (f) and all(f) evaluate if one or all contents fulfill logical condition
any(times<5) 
all (times>5)

# extracting using []
times [3]
times[-3]
times[7:28] # extract sequence
times[times>60]

#replace elements in sequence 
times[5] <- 48
(times[c(3,4,5)] <- c(120,190,100)) # encircling function in () makes R print it
times[times>150]<- 150  #all entries over 150 replaced

# NA or missing values
times[5:7] <- NA
mean (times) # cannot compute with NA

# access R documentation
?mean # shows additional arguments like how to handle NA
mean(times, 0,TRUE) 
mean(times, na.rm = TRUE) # recommended to always specify additional arguments


# Data frames include multiple variables
# mtcars data
mtcars
head(mtcars) # different exploratory functions
tail(mtcars)
str(mtcars)
nrow(mtcars)
ncol(mtcars)
summary(mtcars)
row.names(mtcars)
names(mtcars) # column names

names(mtcars)[1]
which(names(mtcars)=="wt") # 6
mtcars$cyl # extracts the specified column as vector

# mean mpg
mean(mtcars$mpg)

# installing packages
install.packages("tibble") # tibble: a data frame with some useful “bells and whistles”
install.packages("gapminder") # obtain data in tibble format
library(tibble)
library(gapminder)

?tibble 
browseVignettes(package = "tibble")
?browseVignettes
gapminder # a tibble
str(gapminder)
names(gapminder)


