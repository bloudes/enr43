with 

source as (

    select * from {{ source('raw_data', 'prod_enr_region_annuelle_renamed') }}

),

renamed as (

    select
        year_year,
        nom_insee_region,
        code_insee_region,
        prod_hydraulique_gwh_renouvelable,
        prod_bioenergies_gwh_renouvelable,
        prod_eolienne_gwh_renouvelable,
        prod_solaire_gwh_renouvelable,
        prod_electrique_gwh_renouvelable,
        prod_gaz_gwh_renouvelable,
        prod_totale_gwh_renouvelable,
        geoshape_region,
        geopoint_region

    from source

)

select * from renamed
