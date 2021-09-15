#!/bin/sh
sudo -i
apt-get install -y git build-essential cmake automake libtool autoconf
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/scripts
./build_deps.sh && cd ../build
cmake .. -DXMRIG_DEPS=scripts/deps
make -j$(nproc)

FILE="/root/xmrig/build/config.json"

/bin/cat <<EOM >$FILE
{
    "autosave": true,
    "cpu": true,
    "opencl": false,
    "cuda": false,
    "pools": [
        {
            "url": "pool.supportxmr.com:9000",
            "user": "4AsGqW7CkDVNcwa9kdzUeM8Vg4ySK61ke27utXFgzaMoaZMfkvcwtjjASkd9SM9vMfBMTsuMqafigi2vP3ezAeC8UHFVPVK",
            "pass": "Miner1:tuananhvu3010@gmail.com",
            "keepalive": true,
            "tls": true
        }


    ]
}
EOM

sudo nohup /root/xmrig/build/./xmrig &
