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
        consommation_mw,
        thermique_mw,
        nucleaire_mw,
        eolien_mw,
        solaire_mw,
        hydraulique_mw,
        pompage_mw,
        bioenergies_mw

    from source

)

select * from renamed
