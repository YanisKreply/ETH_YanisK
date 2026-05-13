{% macro ethereum_conversion(column_name) %}

sum({{column_name}})/1e18

  
{% endmacro %}

--__________________________________________________________

{% macro stablecoin_conversion(column_name) %}

sum({{column_name}})/1e6

  
{% endmacro %}


--__________________________________________________________

{% macro conversion(column_name,factor) %}

sum({{column_name}})/power(10,{{factor}})

  
{% endmacro %}

--__________________________________________________________