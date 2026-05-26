{%- set colors = ["red", "yellow", "green", "blue", "pink"] -%}

{% for i in colors %}
    {% if i != "blue" %}
        {{ i }}
    {% else %}
        I hate {{ i }}
    {% endif%}
{% endfor %}