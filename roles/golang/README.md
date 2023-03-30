golang
=========

Install golang and required go pkgs, sets GOPATH & GOROOT

Requirements
------------

Must be ran after `common` role

Role Variables
--------------

All of the required variables are already set in defaults/main.yml.

If you need to override any of those values, add them to group\_vars instead or set them at runtime from command line.   

Variables that aren't required should be set in group\_vars or set at runtime from command line.

Check ansible doc on variable precedence for more informations.

| Variable                | Required | Default                      | Choices                   | Comments                                                         |
|-------------------------|----------|------------------------------|---------------------------|------------------------------------------------------------------|
| go\_pkgs                | yes      | see defaults/main.yml        | arrays of strings         | a list go pkgs needed to set up the dev environment for students |



Example Playbook
----------------

    - hosts: servers
      roles:
         - common
         - golang

License
-------

MIT

Author Information
------------------

Drop - pedro.mora@01talent.com
