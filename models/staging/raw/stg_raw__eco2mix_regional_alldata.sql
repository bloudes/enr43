with 

source as (

    select * from {{ source('raw', 'eco2mix_regional_alldata') }}

),

renamed as (

    select
        code insee région AS code_insee_region,
        région AS region,
        nature AS nature,
        date,
        heure,
        date - heure AS date_heure,
        consommation _mw_ AS consommation_mw,
        thermique _mw_ AS prod_thermique_mw,
        nucléaire _mw_ AS prod_nucleaire_mw,
        eolien _mw_ AS prod_eolien_mw,
        solaire _mw_ AS prod_solaire_mw,
        hydraulique _mw_ AS prod_hydraulique_mw,
        pompage _mw_ AS prod_pompage_mw,
        bioénergies _mw_ AS prod_bioenergies_mw,
        ech_ physiques _mw_ AS ech_physiques,
        stockage batterie AS stockage_batterie,
        déstockage batterie AS destockage_batterie,
        tco thermique _%_ AS tco_thermique_%,
        tch thermique _%_ AS tch_thermique_%,
        tco nucléaire _%_ AS tco_nucleaire_%,
        tch nucléaire _%_ AS tch_nucleaire_%,
        tco eolien _%_ AS tco_eolien_%,
        tch eolien _%_ AS tch_eolien_%,
        tco solaire _%_ AS tco_solaire_%,
        tch solaire _%_ AS tch_solaire_%,
        tco hydraulique _%_ AS tco_hydraulique_%,
        tch hydraulique _%_ AS tch_hydraulique_%,
        tco bioénergies _%_ AS tco_bioenergies_%,
        tch bioénergies _%_ AS tch_bioenergies_%
    from source
)

select * from renamed
