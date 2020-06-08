SELECT W.Id, WP.age, W.coins_needed, W.power
FROM Wands W JOIN Wands_Property WP
ON W.code = WP.code
WHERE WP.is_evil = 0
AND W.coins_needed = (SELECT min(w1.coins_needed) FROM Wands w1 JOIN Wands_Property wp1 ON w1.code = wp1.code WHERE w1.power = W.power AND wp1.age = WP.age)
ORDER BY W.power DESC, WP.age DESC
