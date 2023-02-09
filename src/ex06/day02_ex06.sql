SELECT pizza_name, p.name AS pizzeria_name
FROM menu
JOIN pizzeria p on menu.pizzeria_id = p.id
JOIN person_order po on menu.id = po.menu_id
WHERE po.person_id = 1 OR po.person_id = 4
ORDER BY pizza_name, pizzeria_name;