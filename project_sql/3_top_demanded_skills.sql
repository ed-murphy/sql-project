/*
Question: What are the most in-demand skills for data analysts?
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills for a data analyst
- Focus on all job postings, all remote job postings, and all Philadelphia job postings
- Why? Retrieves the top 5 skills with the highest demand in various Data Analyst job markets,
    providing insights into the most valuable skills for job seekers.
*/

SELECT
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count,
    COUNT(CASE WHEN job_location = 'Anywhere' THEN skills_job_dim.job_id END) AS demand_count_remote,
    COUNT(CASE WHEN job_location = 'Philadelphia, PA' THEN skills_job_dim.job_id END) AS demand_count_philly
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    skills
ORDER BY
    demand_count DESC
LIMIT 5;