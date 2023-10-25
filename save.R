flights = readRDS("data/flights.rds")
str(flights)
$data
flightsData <- flights$data[[1]]$data_frame
grades <- data.frame(
  student = c("Alice", "Bob", "Charlie", "David", "Eve"),
  midterm = c(95, 80, 70, 60, 75),
  final = c(90, 85, 75, 95, 80)
)
grades_list <- list(
  student = c("Alice", "Bob", "Charlie", "David", "Eve"),
  midterm = c(95, 80, 70, 60, 75),
  final = c(90, 85, 75, 95, 80)
)
grades[["student"]]
grades[["midterm"]]
grades[5, "student"]
grades[c(2,5), c("student", "midterm")]
dplyr::glimpse(flightsData)
class(flightsData$AirlineID)
head(flightsData$ScheduleStartDate)
householdIncomes <- c(
  "middle income", "high income", "middle income", "low income",
  "middle income", "high income", "high income", "low income",
  "high income", "middle income", "high income", "middle income"
)
factor(flightsData$AirlineID)
flights$Data[[1]]$data_frame <- flightsData
saveRDS(flights, 'data/flights.rds')
fct_householdIncome <- factor(householdIncomes)
ord_fct_householdIncome <- ordered(householdIncomes, levels = c("low income","middle income","high income"))
"low income"< "middle income"

flights = readRDS("data/flights.rds")
levels(fct_householdIncome)
table(fct_householdIncome)
tb_airlineID <- table(flightsData$AirlineID)
tb_airlineID
sort(tb_airlineID, decreasing = TRUE)
