with active_volume as (
    
    select *
    from {{ var('active_volume') }}
),

fields as (

    select
        id as active_volume_id,
        connector_id,
        destination_id,
        measured_at,
        monthly_active_rows,
        schema_name,
        table_name
    
    from active_volume
)

select * from fields