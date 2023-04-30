doas:
  pkg.installed:
    - pkgs:
      - doas

/etc/doas.conf:
  file.managed:
    - source: salt://doas/files/doas.conf
    - user: root
    - group: root
    - mode: 0400
    - check_cmd: /usr/bin/doas -C
