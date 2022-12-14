-- Select the bands table from the holberton database
-- rank band origins by total fans in the country
SELECT origin,
       SUM(fans) nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC
