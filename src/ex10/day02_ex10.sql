WITH foo AS (
    SELECT name, id, address
    FROM person
)

SELECT person.name AS person_name1, foo.name AS person_name2, person.address AS common_address
FROM person
LEFT JOIN foo ON person.address = foo.address
WHERE person.id > foo.id
ORDER BY person_name1, person_name2, common_address;