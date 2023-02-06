SELECT
    (SELECT name FROM person WHERE id = pv.person_id) AS person_name,
    (SELECT name FROM pizzeria WHERE id = pv.pizzeria_id) AS pizzeria_name,
        pv.visit_date
FROM
    (SELECT person_id, pizzeria_id, visit_date
        FROM person_visits
        WHERE visit_date BETWEEN '2022-01-07' AND '2022-01-09') AS pv
ORDER BY person_name, pizzeria_name DESC;