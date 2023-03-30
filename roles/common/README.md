common
=========

Basic configuration of 01Edu schools computers:

- Creates and update users (bocal & student)
- Install apt/snap pkgs
- Remove unused apt pkgs
- Disable and mask unused services 
- Add staff members ssh keys to bocal user
- Copy configuration files 
- Creates and change background image with 01 logo
- Gnome configuration & drivers installation

Requirements
------------

Should be ran after using 01Edu custom ubuntu image.

Role Variables
--------------

All of the required variables are already set in defaults/main.yml.

If you need to override any of those values, add them to group\_vars instead or set them at runtime from command line.   

Variables that aren't required should be set in group\_vars or set at runtime from command line.

Check ansible doc on variable precedency for more informations.


| Variable                | Required | Default                      | Choices                   | Comments                                 |
|-------------------------|----------|------------------------------|---------------------------|------------------------------------------|
| bocal\_passwd           | no       | empty                        | string                    | password for bocal user                  |
| apt\_extra\_pkgs        | no       | empty                        | string                    | extra pkgs to be installed from apt      |
| extra\_ssh\_keys        | no       | empty                        | string                    | bocal members ssh public keys            |
| services\_disable       | yes      | see defaults/main.yml        | array of strings          | list of services to be disabled          |
| services\_mask          | yes      | see defaults/main.yml        | array of strings          | list of services to be masked            |
| apt\_install\_pkgs      | yes      | see defaults/main.yml        | array of strings          | default pkgs to be installed from apt    |
| snap\_install\_pkgs     | yes      | see defaults/main.yml        | array of strings          | default pkgs to be installed from snap   |
| apt\_purge\_pkgs        | yes      | see defaults/main.yml        | array of strings          | default pkgs to be removed from apt      |


Example Playbook
----------------

    - hosts: all
      remote_user: bocal
      roles:
         - common

License
-------

MIT

Author Information
------------------

Drop - pedro.mora@01talent.com
