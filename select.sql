SELECT t3.name, SUM(t1.current_price) AS maxx
FROM tickets as t1
INNER JOIN sessions as t2 ON t2.id= t1.session_id
INNER JOIN films as t3 ON t3.id= t1.film_id
GROUP BY t3.id
ORDER BY maxx DESC