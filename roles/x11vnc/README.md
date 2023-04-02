x11vnc
=========

Install and enable x11vnc

Role Variables
--------------

All of the required variables are already set in defaults/main.yml.

If you need to override any of those values, add them to group\_vars instead or set them at runtime from command line.   

Variables that aren't required should be set in group\_vars or set at runtime from command line.

Check ansible doc on variable precedence for more informations.


| Variable         | Required | Default                      | Choices                   | Comments                                 |
|------------------|----------|------------------------------|---------------------------|------------------------------------------|
| x11vnc\_passwd   | yes      | empty                        | string                    | password for remote access               |

Example Playbook
----------------

```yaml
    - hosts: all
      roles:
         - x11vnc
```
License
-------

MIT

Author Information
------------------

Drop - pedro.mora@01talent.com
