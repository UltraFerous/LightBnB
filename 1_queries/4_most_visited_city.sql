SELECT city, COUNT(reservations.*) as total_reservations
FROM properties
JOIN reservations
ON properties.id = property_id
GROUP BY city
ORDER BY total_reservations DESC;

-- SELECT title, COUNT(reservations.*) as total_reservations
-- FROM properties
-- JOIN reservations
-- ON properties.id = property_id
-- GROUP BY title
-- ORDER BY total_reservations DESC;