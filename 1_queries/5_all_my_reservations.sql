SELECT reservations.id, properties.title, cost_per_night, start_date, cost_per_night, AVG(rating)
FROM properties
JOIN reservations
ON properties.id = reservations.property_id
JOIN property_reviews
ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
GROUP BY reservations.id, properties.title, start_date, cost_per_night
ORDER BY start_date ASC
LIMIT 10;