{% macro limit_data_in_dev() %}

{%if target.name == 'dev'%}
--where collector_tstamp >= dateadd('day',-3,current_timestamp)
where order_Date >= to_date('01-04-2018','DD-MM-YYYY')
{% endif %}

{% endmacro %}