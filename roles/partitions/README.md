partitions
=========

Set partitions labels and removes the 'remove-me' partition created by d-i from automated install.

Requirements
------------

Needs to be ran after using 01Edu custom ubuntu image.

Example Playbook
----------------

    - hosts: all 
      roles:
         - partitions

License
-------

MIT

Author Information
------------------

Drop - pedro.mora@01talent.com
