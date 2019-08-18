#Iperf3 is used to test network performance and bandwidth between machines.

#How to use it

As Server docker run -it --rm -p 5201:5201/udp -p 5201:5201/tcp --name Iperf3 zsoltfejes/iperf3 -s

As host:

docker run -it --rm --name Iperf3 zsoltfejes/iperf3 -c

If you need help how to use different ports or different measures use:

docker run -it --rm --name Iperf3 zsoltfejes/iperf3 --help
