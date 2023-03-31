Role Name
=========

Installs n (version manager for nodejs) and nodejs latest version.

Requirements
------------

Must be ran after the common playbook.

Example Playbook
----------------

```yaml
    - hosts: all
      remote_user: bocal
      roles:
        - common
        - nodejs
```

License
-------

MIT

Author Information
------------------

Drop - pedro.mora@01talent.com
