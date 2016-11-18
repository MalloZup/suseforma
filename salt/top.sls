base:
  '*':
    - default

  'role:tomcat-server':
    - match: grain
    - tomcat-server

  'role:frankzappa':
    - match: grain
    - frankzappa

  'role:control-node':
    - match: grain
    - control-node
