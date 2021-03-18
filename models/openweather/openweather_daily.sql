
SELECT * 
FROM {{ ref('stg_weather') }}
WHERE name is NOT NULL