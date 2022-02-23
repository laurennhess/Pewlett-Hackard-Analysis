# Pewlett-Hackard-Analysis (SQL)

## Overview
### Purpose
#### The purpose of the Pewlett-Hackard Analysis is to provide a report to the manager that determines the number of retiring employees per job title, and identify employees who are eligible to participate in a mentorship program. Using the csv files provided, we first determined who was eligible to retire based on their birthdate, then retrieved their job titles so that we could find out what job positions need to be replaced with new hires. To find this information, we first created a table with the employee information of the employee that would be retiring (i.e. employee id, first name, last name, job title) then narrowed it down to the count per job title that would be retiring. To leave an optimal amount of transition time from each retiree to the new job hires, we created a table for mentorship eligibility to determine which employees that are currently within the company are qualified for the mentorship program. 

### Results
#### Retirement
1) There is a total of seven job titles that have retiring employees: Senior Engineer, Senior Staff, Engineer, Staff, Technique Leader, Assistant Engineer, and Manager.
2) Below is a table that shows the count per job title that are retiring:
<img width="172" alt="Screen Shot 2022-02-22 at 5 42 08 PM" src="https://user-images.githubusercontent.com/94096530/155244030-a12eda61-0ece-4259-8e89-689686b14d37.png">
In total, there are 72,456 employees that are eligible for retirement.

#### Mentorship Eligibility
1) After running a query to select the distinct job titles or current employees that are eligible for the mentorship program, we can see that there are only six job titles that qualify. There are no current employees that qualify for the "Manager" position: 
<img width="157" alt="Screen Shot 2022-02-22 at 5 45 17 PM" src="https://user-images.githubusercontent.com/94096530/155244269-e8fa092c-6537-4b6e-8545-42fdfaa5dfbf.png">
2) From the mentorship eligibility table, we see that there are a total of 1549 current employees that are eligible for the mentorship program which is significantly less than the amount of employees retiring.

### Summary
From the quereies we ran, we can see that there are significantly less employees that are eligible for the mentorship program than the amout of employees retiring. In total, Pewlett-Hackard will need to hire 25,916 Senior Engineers, 24,926 Senior Staff, 9,285 Engineers, 7,636 Staff, 3,601 Technique Leaders, 1,090 Assistant Engineers, and 2 Managers. There are currently 1549 employees that are eligible for the mentorship program and will be able to replace some of the retiring job titles, but the rest of the positions will need to be filled by new hires. Additionally, there are no eligible employees to be mentored in the "Manager" position. In sum, Pewlett-Hackard is not nearly prepared for the "Silver Tsunami" that is coming.
