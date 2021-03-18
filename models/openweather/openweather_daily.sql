
SELECT * 
FROM {{ ref('stg_weather') }}
WHERE "LOCATION" is NOT NULL