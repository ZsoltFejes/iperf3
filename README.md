Iperf3 in containerized environment
====

Iperf3 is used to test network performance and bandwidth between machines.


How to use it
===

# As Server

docker run -it --rm -p 5201:5201/udp -p 5201:5201/tcp --name Iperf3 zsoltfejes/iperf3 -s

Server as a daemon

docker run -d --rm -p 5201:5201/udp -p 5201:5201/tcp --name Iperf3 zsoltfejes/iperf3 -s -d

If you want to use it as a service always awailable run:

docker run -d -p 5201:5201/udp -p 5201:5201/tcp --restart always --name Iperf3 zsoltfejes/iperf3 -s -d


# As host:

docker run -it --rm --name Iperf3 zsoltfejes/iperf3 -c <IPofServer>

If you need help how to use different ports or different measures use:

docker run -it --rm --name Iperf3 zsoltfejes/iperf3 --help

Documentation
===

If you want to change any configuration you can do change the flags after the container name zsoltfejes/iperf3

In case you need to change the port on the container. You need to stop it, remove and recreate the container with the new configuration.

See the iperf3 documentation https://iperf.fr/iperf-doc.php
