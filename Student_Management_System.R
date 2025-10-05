# Load required library for data manipulation
library(dplyr)

# Read individual CSV files
personal_info <- "D:/VIT MSc/SEM-1/Exploratory Data Analysis/Week 2/Case Study/student_personal_info.csv"
academic_performance <- "D:/VIT MSc/SEM-1/Exploratory Data Analysis/Week 2/Case Study/student_academic_performance.csv"
activities <- "D:/VIT MSc/SEM-1/Exploratory Data Analysis/Week 2/Case Study/student_extracurricular_activities.csv"


personal_info <- read.csv(personal_info)
academic_performance <- read.csv(academic_performance)
activities <- read.csv(activities)

# Display first few records from each dataset
head(personal_info)
head(academic_performance)
head(activities)


# Combine all datasets by Student_ID
student_data <- personal_info %>%
  inner_join(academic_performance, by = "Student_ID") %>%
  inner_join(activities, by = "Student_ID")

# Display combined dataset
head(student_data)

# Save merged dataset to a new CSV file
write.csv(student_data, "D:/VIT MSc/SEM-1/Exploratory Data Analysis/Week 2/Case Study/student_management_combined.csv", row.names = FALSE)

# Confirmation message
print("Combined student dataset successfully created and saved as 'student_management_combined.csv'")

# Extract record of a specific student (e.g., Student_ID = 3)
student_record <- subset(student_data, Student_ID == 3)

# Save that student's record to a new CSV file
write.csv(student_record, "D:/VIT MSc/SEM-1/Exploratory Data Analysis/Week 2/Case Study/student_record_3.csv", row.names = FALSE)

# Display the extracted student's details
student_record