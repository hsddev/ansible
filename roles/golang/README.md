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



Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

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
