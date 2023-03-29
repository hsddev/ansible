common
=========

Basic configuration of 01Edu schools computers:

- Creates and update users (bocal & student)
- Install apt/snap pkgs
- Remove unused apt pkgs
- Disable and mask unused services 
- Add bocal members ssh keys to 
- Copy configuration files
- Creates and change background image with 01 logo
- Gnome configuration & drivers installation

Requirements
------------

Should be ran after using 01Edu custom ubuntu image.

Role Variables
--------------

All of the variables that aren't required are already set in defaults/main.yml. If you need to override any of those value, use group_vars instead or change them from command line   

| Variable                | Required | Default | Choices                   | Comments                                 |
|-------------------------|----------|---------|---------------------------|------------------------------------------|
| bocal_passwd            | yes      | empty   | string                    | password for `bocal` user                |
| services_disable        | no       |         | array of strings          | list of services to be disabled          |
| services_mask           | no       |         | array of strings          | list of services to be masked            |
| apt_install_pkgs        | no       |         | array of strings          | default pkgs to be installed from apt    |
| snap_install_pkgs       | no       |         | array of strings          | default pkgs to be installed from snap   |
| apt_purge_pkgs          | no       |         | array of strings          | default pkgs to be removed from apt      |


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
