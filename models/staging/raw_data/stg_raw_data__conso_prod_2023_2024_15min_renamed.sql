with 

source as (

    select * from {{ source('raw_data', 'conso_prod_2023_2024_15min_renamed') }}

),

renamed as (

    select
        code_insee_region,
        region,
        nature,
        date_date,
        heure,
        date_heure,
        consommation_mw,
        thermique_mw,
        nucleaire_mw,
        eolien_mw,
        solaire_mw,
        hydraulique_mw,
        pompage_mw,
        bioenergies_mw,
        ech_physiques_mw,
        stockage_batterie,
        destockage_batterie,
        tco_thermique_pct,
        tch_thermique_pct,
        tco_nucleaire_pct,
        tch_nucleaire_pct,
        tco_eolien_pct,
        tch_eolien_pct,
        tco_solaire_pct,
        tch_solaire_pct,
        tco_hydraulique_pct,
        tch_hydraulique_pct,
        tco_bioenergies_pct,
        tch_bioenergies_pct

    from source

)

select * from renamed
