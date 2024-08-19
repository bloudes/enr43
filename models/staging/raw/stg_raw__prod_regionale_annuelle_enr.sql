with 

source as (

    select * from {{ source('raw', 'prod_regionale_annuelle_enr') }}

),

renamed as (

    select
        annee,
        nom insee région,
        code insee région,
        production hydraulique renouvelable _gwh_,
        production bioénergies renouvelable _gwh_,
        production éolienne renouvelable _gwh_,
        production solaire renouvelable _gwh_,
        production électrique renouvelable _gwh_,
        production gaz renouvelable _gwh_,
        production totale renouvelable _gwh_,
        géo-shape région,
        géo-point région

    from source

)

select * from renamed
