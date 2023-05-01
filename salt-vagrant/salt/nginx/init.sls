nginx_pkg:
  pkg.installed:
    - name: nginx

nginx_service:
  service.running:
    - name: nginx
    - enable: True
    - require:
      - pkg: nginx_pkg

/var/www/html/index.html:
  file:
    - managed
    - source: salt://nginx/files/index.html
    - require:
      - pkg: nginx_pkg
