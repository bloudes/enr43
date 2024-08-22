SELECT
    date_date,
    region,
    consommation_mw,
    ROUND((thermique_mw + nucleaire_mw + eolien_mw + solaire_mw + hydraulique_mw + pompage_mw + bioenergies_mw),2) AS total_production
FROM {{ ref('conso_prod__2013_2024_day') }}