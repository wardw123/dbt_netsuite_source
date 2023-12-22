{% macro get_job_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt.type_timestamp()},        
    {"name": "id", "datatype": dbt.type_int()},        
    {"name": "externalid", "datatype": dbt.type_string()},
    {"name": "customer", "datatype": dbt.type_int()},
    {"name": "entityid", "datatype": dbt.type_string()},   
    {"name": "defaultbillingaddress", "datatype": dbt.type_int()},
    {"name": "defaultshippingaddress", "datatype": dbt.type_int()},     
    {"name": "parent", "datatype": dbt.type_int()}
] %}

{{ fivetran_utils.add_pass_through_columns(columns, var('jobs_pass_through_columns')) }}

{{ return(columns) }}

{% endmacro %}
