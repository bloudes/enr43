select 
        date_date,
        region,
        ROUND(avg(consommation_mw),2) AS consommation_mw,
        ROUND(avg(thermique_mw),2) AS thermique_mw,
        ROUND(avg(nucleaire_mw),2) AS nucleaire_mw,
        ROUND(avg(eolien_mw),2) AS eolien_mw,
        ROUND(avg(solaire_mw),2) AS solaire_mw,
        ROUND(avg(hydraulique_mw),2) AS hydraulique_mw,
        ROUND(avg(pompage_mw),2) AS pompage_mw,
        ROUND(avg(bioenergies_mw),2) AS bioenergies_mw
from {{ ref('stg_raw_data__conso_prod__2013_2024_30min') }}
where date_date >= '2014-08-01' AND date_date <= '2024-07-31'
group by date_date, region