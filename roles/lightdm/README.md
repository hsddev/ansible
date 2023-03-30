Role Name
=========

Install & configure the lightdm display manager for 01Talent computers

Requirements
------------

Should be ran after common playbook. 

Role Variables
--------------

All of the required variables are already set in defaults/main.yml.

If you need to override any of those values, add them to group\_vars instead or set them at runtime from command line.   

Variables that aren't required should be set in group\_vars or set at runtime from command line.

Check ansible doc on variable precedence for more informations.

| Variable                  | Required | Default | Choices                    | Comments                                 |
|---------------------------|----------|---------|----------------------------|------------------------------------------|
| student\_autologout\_time | yes      | 1800    | any valid positive integer | the number of seconds before students gets automatically logged out   |

Dependencies
------------

None

Example Playbook
----------------

    - hosts: all 
      roles:
         - lightdm

License
-------

MIT
