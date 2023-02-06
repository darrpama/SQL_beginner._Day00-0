SELECT
       (SELECT name
       FROM person
       WHERE person_order.person_id = person.id) as NAME,
       (SELECT name = 'Denis'
       FROM person
       WHERE person_order.person_id = person.id) as check_name
FROM person_order
WHERE order_date = '2022-01-07' AND (menu_id = 13 OR menu_id = 14 OR menu_id = 18);
