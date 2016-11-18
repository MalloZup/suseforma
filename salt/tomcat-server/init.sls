include:
  - sles.repos
  - control-node.repos

ssh-private-key:
  file.managed:
    - name: /root/.ssh/authorized_keys
    - source: salt://control-node/id_rsa.pub
    - makedirs: True
    - user: root
    - group: root
    - mode: 700

tomcat:
  pkg.installed:
    - pkgs:
      - tomcat
      - twopence
    - require:
      - sls: control-node.repos

