#!/bin/sh
PASSWORD=123123
WSPATH=/TS/recharge/tzUrl.html
PORT=443

cat << EOF > /etc/shadowsocks-rust/config.json
{
    "servers": [
        {
            "address": "0.0.0.0",
            "port": ${PORT},
            "password": "${PASSWORD}",
            "method": "chacha20-ietf-poly1305",
            "fast_open": true,
            "prefer_ipv6": false,
            "no_delay": true,
            "nofile": 10240,
            "keep_alive": 6,
            "mode": "tcp_and_udp",
            "dns": "1.1.1.1",
            "plugin":"v2ray-plugin",
            "plugin_opts":"server;tls;host=ss-loveqianool.cloud.okteto.net;loglevel=none"
        }
    ]
}
EOF

# Run V2Ray
/usr/bin/ssserver --log-without-time -c /etc/shadowsocks-rust/config.json
