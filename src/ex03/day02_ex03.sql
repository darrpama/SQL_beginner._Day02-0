WITH list_generator AS (
    SELECT CAST(dates as DATE) FROM generate_series('2022-01-01', '2022-01-10', '1 day'::interval) AS dates
)

SELECT dates FROM list_generator
LEFT JOIN (SELECT * FROM person_visits WHERE person_visits.person_id = 1 OR person_visits.person_id = 2) as info
ON info.visit_date = dates WHERE info.visit_date IS NULL
ORDER BY dates;
