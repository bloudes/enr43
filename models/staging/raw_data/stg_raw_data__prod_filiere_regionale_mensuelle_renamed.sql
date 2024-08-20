with 

source as (

    select * from {{ source('raw_data', 'prod_filiere_regionale_mensuelle_renamed') }}

),

renamed as (

    select
        mois,
        code_insee_region,
        region,
        prod_nucleaire_gwh,
        prod_thermique_gwh,
        prod_hydraulique_gwh,
        prod_eolienne_gwh,
        prod_solaire_gwh,
        prod_bioenergies_gwh,
        geoshape_region,
        geopoint_region

    from source

)

select * from renamed
