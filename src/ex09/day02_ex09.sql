SELECT name FROM person
JOIN person_order ON person.id = person_order.person_id
JOIN menu ON person_order.menu_id = menu.id
WHERE person.gender = 'female' AND (menu.pizza_name = 'pepperoni pizza')
INTERSECT
SELECT name FROM person
JOIN person_order ON person.id = person_order.person_id
JOIN menu ON person_order.menu_id = menu.id
WHERE person.gender = 'female' AND (menu.pizza_name = 'cheese pizza')
ORDER BY name;