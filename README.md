# dev-box
A development box deployer, Support macOS, CentOS or Ubuntu.

# Usage

You can edit `install.sh` to customize your installer.

```bash
git clone https://github.com/subchen/dev-box.git
cd dev-box
./install.sh
```

# Configration

## HTTP/HTTPS Proxy

If you need a http/https proxy for network access, you can edit `proxy/usr/local/bin/proxy-sh`

```
#!/bin/sh
http_proxy=http://your_proxy_ip:8080/ \
https_proxy=https://your_proxy_ip:8080/ \
exec "$@"
```

## SSH Key

Please create your ssh private key for your dev-box

```
ssh-keygen

cp -f ~/.ssh/id_rsa* ssh/root/.ssh/
```
