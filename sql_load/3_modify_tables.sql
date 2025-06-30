SELECT quaterly_one_jobs.job_title_short,
    quaterly_one_jobs.job_location,
    quaterly_one_jobs.job_via,
    quaterly_one_jobs.job_posted_date::date,
    quaterly_one_jobs.salary_year_avg
FROM (
        SELECT *
        FROM january_jobs
        UNION ALL
        SELECT *
        FROM february_jobs
        UNION ALL
        SELECT *
        FROM march_jobs
    ) AS quaterly_one_jobs
WHERE quaterly_one_jobs.salary_year_avg > 70000
    AND quaterly_one_jobs.job_title_short = 'Data Analyst'
ORDER BY quaterly_one_jobs.salary_year_avg DESC