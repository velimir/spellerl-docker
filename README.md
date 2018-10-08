Dockerized [spellerl](https://github.com/velimir0xff/spellerl) cli
=====

Dockerized command line interface for [spellerl](https://github.com/velimir0xff/spellerl) library.

Clone
-----

    $ git clone --recurse-submodules git://github.com/velimir0xff/spellerl-docker.git

Build
-----

    $ docker build -t spellerl .

If building is not an option you can always pull latest version from docker hub:

    $ docker pull velimir/spellerl:latest

Run
---

    $ docker run --rm spellerl 10


Examples
--------

    $ docker run --rm spellerl 10
    ten

    $ docker run --rm spellerl 1020348593
    one billion, twenty million, three hundred and forty-eight thousand, five hundred and ninety-three

    $ docker run --rm spellerl 1
    one

    $ docker run --rm spellerl -1
    negative integers are not supported

    $ docker run --rm spellerl buz
    type of a specified argument is not supported

    $ docker run --rm spellerl
    usage: spellerl TERM
