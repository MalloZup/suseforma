include:
  - control-node.repos

ssh-private-key:
  file.managed:
    - name: /root/.ssh/id_rsa
    - source: salt://control-node/id_rsa
    - makedirs: True
    - user: root
    - group: root
    - mode: 700

ssh-public-key:
  file.managed:
    - name: /root/.ssh/id_rsa.pub
    - source: salt://control-node/id_rsa.pub
    - makedirs: True
    - user: root
    - group: root
    - mode: 700

authorized-keys:
  file.managed:
    - name: /root/.ssh/authorized_keys
    - source: salt://control-node/id_rsa.pub
    - user: root
    - group: root
    - mode: 700


