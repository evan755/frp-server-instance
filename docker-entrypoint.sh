#!/usr/bin/env sh

cat > /etc/frps.toml <<EOF
bindAddr = "0.0.0.0"
bindPort = ${FRP_MAIN_PORT}

auth.method = "token"
auth.token = "${FRP_MAIN_TOKEN}"

allowPorts = [
  {start = ${FRP_MAIN_PORT}, end = ${FRP_WEB_PORT}}
]

webServer.addr = "0.0.0.0"
webServer.port = ${FRP_WEB_PORT}
webServer.user = "${FRP_WEB_USERNAME}"
webServer.password = "${FRP_WEB_PASSWORD}"
EOF

bin/frps -c /etc/frps.toml