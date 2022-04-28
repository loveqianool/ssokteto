FROM teddysun/shadowsocks-rust:alpine

ADD entrypoint.sh /opt/entrypoint.sh

ENTRYPOINT ["sh", "-c", "/opt/entrypoint.sh"]
