# dev-box
A development box deployer, Support macOS, CentOS or Ubuntu.

## Usage

```bash
git clone https://github.com/subchen/dev-box.git
cd dev-box
./install.sh
```

You can edit `install.sh` to customize your installer.

## HTTP/HTTPS Proxy

If you need a http/https proxy for network access, you can edit `proxy/usr/local/bin/proxy-sh`

```
#!/bin/sh
http_proxy=http://your_proxy_ip:8080/ \
https_proxy=https://your_proxy_ip:8080/ \
exec "$@"
```

