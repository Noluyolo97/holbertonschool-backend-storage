-- Select the bands table from the holberton database
-- rank glam rock bands by their lifespan in years
SELECT band_name,
       ABS(formed - IFNULL(split, 2020)) lifespan
FROM metal_bands WHERE FIND_IN_SET('Glam rock', style)
ORDER BY lifespan DESC
