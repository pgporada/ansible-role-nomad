Role Name
=========
Installs and configures [Hashicorp Nomad](https://nomadproject.io/) to my liking.

Requirements
------------

* `unzip`

Role Variables
--------------

Controls verbosity of the logs the Nomad agent will output. Valid log levels include `WARN`, `INFO`, and `DEBUG`. Defaults to `INFO`.

        nomad_loglevel: INFO

Boolean that sets a particular node to either a client or server. It is not reccomended, though you can, run a client and server on the same node. Defaults to `false`.

        nomad_is_client: false
        nomad_is_server: false

Reserve a port of a nodes CPU resources in MHz. Defaults to `512`MHz.

        nomad_client_cpu_reservation: 512

Reserve a port of a nodes memory resources in Megabytes. Defaults to `768`MB.

        nomad_client_memory_reservation: 768

Reserve a port of a nodes disk capacity in Megabytes. Defaults to `10`GB aka `10240`MB.

        nomad_client_disk_reservation: 10240

Dependencies
------------

* A working [Hashicorp Consul](https://www.consul.io/) installation


Example Playbook
----------------

To run the local playbook, issue the following command.
`ansible-playbook playbook.yml --ask-sudo-pass`

License
-------

Apache License, Version 2.0

Author Information
------------------
[Phil Porada](https://philporada.com)
