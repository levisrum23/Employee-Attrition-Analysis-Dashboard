
SELECT 
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = true THEN 1 ELSE 0 END) AS Employees_Left,
    ROUND(SUM(CASE WHEN Attrition = true THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate
FROM `hr-attrition-511806.hr_attr.HR Attrition IBM Dataset`;