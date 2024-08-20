select 
        date_date,
        region,
       CASE 
            WHEN region = "Île-de-France" THEN 12419961
            WHEN region = "Auvergne-Rhône-Alpes" THEN 8235923
            WHEN region = "Hauts-de-France" THEN 5983823
            WHEN region = "Nouvelle-Aquitaine" THEN 6154772
            WHEN region = "Grand Est" THEN 5568711
            WHEN region = "Occitanie" THEN 6154729
            WHEN region = "Provence-Alpes-Côte d'Azur" THEN 5198011
            WHEN region = "Normandie'" THEN 3327077
            WHEN region = "Pays de la Loire" THEN 3926389
            WHEN region = "Bretagne" THEN 3453023
            WHEN region = "Bourgogne-Franche-Comté" THEN 2791719
            WHEN region = "Centre-Val de Loire" THEN 2573295
        END AS population, 
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