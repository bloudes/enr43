with 

source as (

    select * from {{ source('raw_data', 'fc_tc_regionaux_mensuels_renamed') }}

),

renamed as (

    select
        mois,
        code_insee_region,
        region,
        fc_moyen_mensuel_hydraulique,
        fc_moyen_mensuel_eolien,
        fc_moyen_mensuel_solaire,
        tc_moyen_mensuel_hydraulique,
        tc_moyen_mensuel_eolien,
        tc_moyen_mensuel_solaire,
        tc_moyen_mensuel_bioenergies,
        geoshape_region,
        geopoint_region

    from source

)

select * from renamed
