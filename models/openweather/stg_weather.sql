-- staging table for OpenWeather API

{{ config(materialized='table') }}

SELECT
    DT,
    _FIVETRAN_SYNCED as date_time,
    CITY_NAME as "LOCATION",
    TEMPERATURE,
    TEMPERATURE_MIN,
    TEMPERATURE_MAX,
    TEMP_FEELS_LIKE,
    HUMIDITY,
    WIND_SPEED,
    PRESSURE,
    "DESCRIPTION" as weather_description
FROM google_cloud_function.daily_weather