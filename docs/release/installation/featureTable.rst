.. This work is licensed under a Creative Commons Attribution 4.0 International Licence.
.. http://creativecommons.org/licenses/by/4.0

Features
========

Supported Openstack Version and OS
----------------------------------

+---------------+----------+-----------+-----------+-----------+-----------+-----------+
|               | OS       | OpenStack | OpenStack | OpenStack | OpenStack | OpenStack |
|               | only     | Liberty   | Mitaka    | Newton    | Ocata     | Pike      |
+---------------+----------+-----------+-----------+-----------+-----------+-----------+
| CentOS 7      | yes      | yes       | yes       | yes       | no        | yes       |
+---------------+----------+-----------+-----------+-----------+-----------+-----------+
| Ubuntu trusty | yes      | yes       | yes       | no        | no        | no        |
+---------------+----------+-----------+-----------+-----------+-----------+-----------+
| Ubuntu xenial | yes      | no        | yes       | yes       | yes       | yes       |
+---------------+----------+-----------+-----------+-----------+-----------+-----------+


Supported Openstack Flavor and Features
---------------------------------------

+---------------+--------------+--------------+---------------+---------------+---------------+
|               |  OpenStack   |  OpenStack   |  OpenStack    | OpenStack     | OpenStack     |
|               |  Liberty     |  Mitaka      |  Newton       | Ocata         | Pike          |
+---------------+--------------+--------------+---------------+---------------+---------------+
| Virtual       |    Yes       |    Yes       |     Yes       |    Yes        |    Yes        |
| Deployment    |              |              |               |               |               |
+---------------+--------------+--------------+---------------+---------------+---------------+
| Baremetal     |    Yes       |    Yes       |     Yes       |    Yes        |    Yes        |
| Deployment    |              |              |               |               |               |
+---------------+--------------+--------------+---------------+---------------+---------------+
| HA            |    Yes       |    Yes       |     Yes       |    Yes        |    Yes        |
|               |              |              |               |               |               |
+---------------+--------------+--------------+---------------+---------------+---------------+
| Ceph          |    Yes       |    Yes       |     Yes       |    Yes        |    Yes        |
|               |              |              |               |               |               |
+---------------+--------------+--------------+---------------+---------------+---------------+
| SDN           |    Yes       |    Yes       |     Yes       |    Yes*       |    Yes*       |
| ODL/ONOS      |              |              |               |               |               |
+---------------+--------------+--------------+---------------+---------------+---------------+
| Compute Node  |    Yes       |    Yes       |     Yes       |    No         |    No         |
| Expansion     |              |              |               |               |               |
+---------------+--------------+--------------+---------------+---------------+---------------+
| Multi-Nic     |    Yes       |    Yes       |     Yes       |    Yes        |    Yes        |
| Support       |              |              |               |               |               |
+---------------+--------------+--------------+---------------+---------------+---------------+
| Boot          |    Yes       |    Yes       |     Yes       |    Yes        |    Yes        |
| Recovery      |              |              |               |               |               |
+---------------+--------------+--------------+---------------+---------------+---------------+
| SFC           |    No        |    No        |     Yes       |    Yes        |    Yes        |
|               |              |              |               |               |               |
+---------------+--------------+--------------+---------------+---------------+---------------+

* ONOS will not be supported in this release.
