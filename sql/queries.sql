-- Stack Overflow Developer Survey (2023-2025)
-- Queries against survey_ready table
-- Same findings as notebooks/02_exploratory_analysis.ipynb - Validated with SQL

-- Query 1: % Using AI tools by role and year
SELECT
    RoleClean,
    Year,
    SUM(CASE WHEN AISelect LIKE 'Yes%' THEN 1 ELSE 0 END) * 1.0 / COUNT(AISelect) AS pct_using_ai
FROM survey_ready
WHERE RoleClean IS NOT NULL
GROUP BY RoleClean, Year
ORDER BY RoleClean, Year;

-- Query 2: % Favorable toward AI by role and year
SELECT
    RoleClean,
    Year,
    SUM(CASE WHEN AISent IN ('Favorable', 'Very favorable') THEN 1 ELSE 0 END) * 1.0 / COUNT(AISent) AS pct_favorable
FROM survey_ready
WHERE RoleClean IS NOT NULL
GROUP BY RoleClean, Year
ORDER BY RoleClean, Year;

-- Query 3: % Who trust AI accuracy by role and year
-- AIAcc is null for 2023 - Column was mislabeled in source file (see docs/schema_crosswalk.md)
SELECT
    RoleClean,
    Year,
    SUM(CASE WHEN AIAcc IN ('Highly trust', 'Somewhat trust') THEN 1 ELSE 0 END) * 1.0 / NULLIF(COUNT(AIAcc), 0) AS pct_trust
FROM survey_ready
WHERE RoleClean IS NOT NULL
GROUP BY RoleClean, Year
ORDER BY RoleClean, Year;

-- Query 4: % Who rate AI good for complex tasks by role and year
-- AIComplex doesn't exist in 2023
SELECT
    RoleClean,
    Year,
    SUM(CASE WHEN AIComplex IN ('Very well at handling complex tasks', 'Good, but not great at handling complex tasks') THEN 1 ELSE 0 END) * 1.0 / NULLIF(COUNT(AIComplex), 0) AS pct_good
FROM survey_ready
WHERE RoleClean IS NOT NULL
GROUP BY RoleClean, Year
ORDER BY RoleClean, Year;

-- Query 5: % Using AI agents by role - 2025 only
SELECT
    RoleClean,
    SUM(CASE WHEN AIAgents LIKE 'Yes%' AND AIAgents NOT LIKE '%copilot%' THEN 1 ELSE 0 END) * 1.0 / NULLIF(COUNT(AIAgents), 0) AS pct_using_agents
FROM survey_ready
WHERE RoleClean IS NOT NULL AND Year = 2025
GROUP BY RoleClean
ORDER BY RoleClean;