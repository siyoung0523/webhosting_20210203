--SELECT
--    *
--FROM job_history jh
--
--WHERE jh.employee_id = 101 or jh.job_id = 'ST_CLERK';
--
--
--SELECT
--    *
--FROM job_history jh
--WHERE jh.employee_id BETWEEN 150 and 200;
--
--SELECT
--    *
--FROM job_history jh
--WHERE jh.employee_id >= 150 and jh.employee_id <= 200;

SELECT
    *
FROM countries ct, regions rg, locations lt
WHERE ct.region_id = rg.region_id
and lt.country_id = ct.country_id;