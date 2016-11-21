OSS:
  pkgrepo.managed:
    - humanname: oss
    - baseurl: http://download.opensuse.org/distribution/leap/42.1/repo/oss/

OSS-UPDATE:
  pkgrepo.managed:
    - humanname: oss-update
    - baseurl: http://download.opensuse.org/update/leap/42.1/oss/

NON-OSS:
  pkgrepo.managed:
    - humanname: non-oss
    - baseurl: http://download.opensuse.org/distribution/leap/42.1/repo/non-oss/

NON-OSS-UPDATE:
  pkgrepo.managed:
    - humanname: non-oss
    - baseurl: http://download.opensuse.org/update/leap/42.1/non-oss/ 

refresh-leap421-repos:
  cmd.run:
    - name: zypper --non-interactive --gpg-auto-import-keys refresh
