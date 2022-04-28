FROM teddysun/shadowsocks-rust:alpine

ADD entrypoint.sh /opt/entrypoint.sh

chmod +x /opt/entrypoint.sh

ENTRYPOINT ["sh", "-c", "/opt/entrypoint.sh"]
