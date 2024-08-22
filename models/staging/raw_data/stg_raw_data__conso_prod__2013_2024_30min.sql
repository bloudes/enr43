with 

source as (

    select * from {{ source('raw_data', 'conso_prod__2013_2024_30min') }}

),

renamed as (

    select
        region,
        date_heure,
        code_insee_region,
        date_date,
        heure,
        IFNULL(consommation_mw, 0) AS consommation_mw,
        IFNULL(thermique_mw, 0) AS thermique_mw,
        IFNULL(nucleaire_mw, 0) AS nucleaire_mw,
        IFNULL(eolien_mw, 0) AS eolien_mw,
        IFNULL(solaire_mw, 0) AS solaire_mw,
        IFNULL(hydraulique_mw, 0) AS hydraulique_mw,
        IFNULL(pompage_mw, 0) AS pompage_mw,
        IFNULL(bioenergies_mw, 0) AS bioenergies_mw

    from source

)

select * from renamed
