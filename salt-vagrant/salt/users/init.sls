{% for user, info in pillar['users'].items() %}
{{ user }}:
  user.present:
    - fullname: {{ info['fullname'] }}
    - shell: {{ info['shell'] }}
{% endfor %}
