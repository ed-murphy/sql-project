# Introduction
This project explores top paying jobs and skills in data analytics. I produced it while taking Luke Barousse's course titled "SQL for Data Analytics": https://www.youtube.com/watch?v=7mz73uXD9DA

The SQL queries can be found here: [project_sql folder](/project_sql/)

# Background
This project pinpoints top paid and in demand skills in data analytics, streamlining the process of finding optimal job postings.

The data come from [Luke Barousse](https://lukebarousse.com/sql), and has information on job titles, salaries, locations, and essential skills.

### The questions answered through the SQL queries in this project were:

1. What are the top-paying data analyst jobs?
2. What skills are required for those top-paying jobs?
3. What skills are most in demand for data analysts?
4. Which skills are associated with higher salaries?
5. What are the most optimal skills to learn?

# Tools I Used
- SQL to query the database for insights.
- PostgreSQL for handling the job posting data.
- Visual Studio Code for database management and executing SQL queries.
- Git & GitHub for version control and sharing my SQL scripts and analysis.

# The Analysis
Each query for this project investigates specific aspects of the data analyst job market. Here's how I approached each question and the results.

### 1. Top Paying Data Analyst Jobs
This query retrieves the top 10 highest-paying data analyst job postings that are available to work from anywhere. It joins job and company data, filters for relevant roles, and sorts by average annual salary in descending order.

| job_id  | company_name                             | job_title                                              | job_location | job_schedule_type | salary_year_avg | job_posted_date       |
|---------|------------------------------------------|--------------------------------------------------------|--------------|-------------------|-----------------|-----------------------|
| 226942  | Mantys                                   | Data Analyst                                            | Anywhere     | Full-time         | 650000.0        | 2023-02-20 15:13:33   |
| 547382  | Meta                                     | Director of Analytics                                   | Anywhere     | Full-time         | 336500.0        | 2023-08-23 12:04:42   |
| 552322  | AT&T                                     | Associate Director- Data Insights                       | Anywhere     | Full-time         | 255829.5        | 2023-06-18 16:03:12   |
| 99305   | Pinterest Job Advertisements             | Data Analyst, Marketing                                 | Anywhere     | Full-time         | 232423.0        | 2023-12-05 20:00:40   |
| 1021647 | Uclahealthcareers                         | Data Analyst (Hybrid/Remote)                            | Anywhere     | Full-time         | 217000.0        | 2023-01-17 00:17:23   |
| 168310  | SmartAsset                               | Principal Data Analyst (Remote)                         | Anywhere     | Full-time         | 205000.0        | 2023-08-09 11:00:01   |
| 731368  | Inclusively                               | Director, Data Analyst - HYBRID                         | Anywhere     | Full-time         | 189309.0        | 2023-12-07 15:00:13   |
| 310660  | Motional                                 | Principal Data Analyst, AV Performance Analysis         | Anywhere     | Full-time         | 189000.0        | 2023-01-05 00:00:25   |
| 1749593 | SmartAsset                               | Principal Data Analyst                                  | Anywhere     | Full-time         | 186000.0        | 2023-07-11 16:00:05   |
| 387860  | Get It Recruit - Information Technology  | ERM Data Analyst                                        | Anywhere     | Full-time         | 184000.0        | 2023-06-09 08:01:04   |


### 2. Skills Required for Top-Paying Jobs
This query identifies the specific skills listed in the top 10 highest-paying data analyst job postings. It joins job, company, and skill data to highlight which skills are most valued by employers offering the highest salaries.

![Most Lucrative Skills](assets\query2.png)

### 3. Most In-Demand Skills for Data Analysts
This query finds the most frequently requested skills across all data analyst job postings. It aggregates skill counts to show which technical and analytical abilities are most sought after in the job market. It also provides separate counts for remote jobs and jobs in the Philadelphia market.

| skills   | demand_count | demand_count_remote | demand_count_philly |
|----------|--------------|---------------------|---------------------|
| sql      | 92628        | 7291                | 328                 |
| excel    | 67031        | 4611                | 243                 |
| python   | 57326        | 4330                | 169                 |
| tableau  | 46554        | 3745                | 172                 |
| power bi | 39468        | 2609                | 115                 |

### 4. Skills Associated with Higher Salaries
This query analyzes which skills are linked to higher average salaries for data analyst roles. It calculates the average salary for each skill and ranks them to reveal which skills can boost earning potential.

| skills       | avg_salary |
|--------------|------------|
| svn          | 400,000    |
| solidity     | 179,000    |
| couchbase    | 160,515    |
| datarobot    | 155,486    |
| golang       | 155,000    |
| mxnet        | 149,000    |
| dplyr        | 147,633    |
| vmware       | 147,500    |
| terraform    | 146,734    |
| twilio       | 138,500    |
| gitlab       | 134,126    |
| kafka        | 129,999    |
| puppet       | 129,820    |
| keras        | 127,013    |
| pytorch      | 125,226    |
| perl         | 124,686    |
| ansible      | 124,370    |
| hugging face | 123,950    |
| tensorflow   | 120,647    |
| cassandra    | 118,407    |
| notion       | 118,092    |
| atlassian    | 117,966    |
| bitbucket    | 116,712    |
| airflow      | 116,387    |
| scala        | 115,480    |


### 5. Most Optimal Skills to Learn
This query combines demand and salary data to recommend the most strategic skills for aspiring data analysts. It highlights skills that are both highly requested and associated with above-average salaries.

| skill_id | skills      | demand_count | avg_salary |
|----------|-------------|--------------|------------|
| 8        | go          | 27           | 115,320    |
| 234      | confluence  | 11           | 114,210    |
| 97       | hadoop      | 22           | 113,193    |
| 80       | snowflake   | 37           | 112,948    |
| 74       | azure       | 34           | 111,225    |
| 77       | bigquery    | 13           | 109,654    |
| 76       | aws         | 32           | 108,317    |
| 4        | java        | 17           | 106,906    |
| 194      | ssis        | 12           | 106,683    |
| 233      | jira        | 20           | 104,918    |
| 79       | oracle      | 37           | 104,534    |
| 185      | looker      | 49           | 103,795    |
| 2        | nosql       | 13           | 101,414    |
| 1        | python      | 236          | 101,397    |
| 5        | r           | 148          | 100,499    |
| 78       | redshift    | 16           | 99,936     |
| 187      | qlik        | 13           | 99,631     |
| 182      | tableau     | 230          | 99,288     |
| 197      | ssrs        | 14           | 99,171     |
| 92       | spark       | 13           | 99,077     |
| 13       | c++         | 11           | 98,958     |
| 186      | sas         | 63           | 98,902     |
| 7        | sas         | 63           | 98,902     |
| 61       | sql server  | 35           | 97,786     |
| 9        | javascript  | 20           | 97,587     |

