auth-key:
  file.managed:
    - name: /root/.ssh/authorized_keys
    - source: salt://control-node/id_rsa.pub
    - makedirs: True
    - user: root
    - group: root
    - mode: 700
