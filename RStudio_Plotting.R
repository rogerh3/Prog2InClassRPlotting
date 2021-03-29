# Plotting 

# Read Data Frame from desktop
ReadData = read.table(file = "/Users/rogerhaydeniii/Desktop/SampleData2.csv", header = T, sep = ",")

# Arrays are different from data frames
# Data frames are just a collection of data
# You can build a function to change a data frame to an array

# Ready for this?

#summary gives general information on the data (mean, median, min, max, quartiles)
summary(ReadData)

#mean of the age, mode is not predefined
mean(ReadData$Age)

# R is used for analysis not to be presented necessarily 

# When this stuff is printed it is printed as a row rather than a column
print(ReadData$Age)
print(ReadData$Value)

# How to plot
# Plot function works on data frames, arrays and vectors. Works on all those data types
plot(ReadData$Age, ReadData$Value)

#Titles
plot(ReadData$Age, ReadData$Value, main = "My Fancy Plot", ylab = "Value", xlab = "Age")

#type
# "p" - points
# "l" - lines
# "b" - both points and lines
# "c" - empty points joined by lines
# "o" - overplotted points and lines
# "s" and "S" - stair steps
# "h" - histogram - like vertical lines
# "n" - does not produce any points or lines

#examples
plot(ReadData$Age, ReadData$Value, main = "My Fancy Plot", ylab = "Value", xlab = "Age" , type = "b")

plot(ReadData$Age, ReadData$Value, main = "My Fancy Plot", ylab = "Value", xlab = "Age", type = "b", col = "orange")

plot(ReadData$Age, ReadData$Vlaue, main = "Comparison", ylab = "", type = "l", col = "blue") 
lines (sampleData$Age, sampleData$Value, col = "red")

barplot (ReadData$Age, main = "Age Distribution", ylab = "Age", xlab = "Data")

barplot(ReadData$Age, main = "Age Distribution", ylab = "Data", xlab = "Age", horiz = TRUE, col = c("red"))

barplot(ReadData$Age, main = "Age Distribution", ylab = "Data", xlab = "Age", horiz = TRUE, names.arg = c("Data 1", "Data 2", "Data 3", "Data 4", "Data 5", "Data 6", "Data 7", "Data 8", "Data 9"))

boxplot(ReadData$Age, main = "Age")

hist(ReadData$Age)
