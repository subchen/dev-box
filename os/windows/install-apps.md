## Windows 必要软件安装

### 安装 Scoop

```bash
// Powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

// 1. offical install
irm get.scoop.sh | iex

// 2. 国内镜像 1 install: https://gitee.com/glsnames/scoop-installer
iwr -useb scoop.201704.xyz | iex

// 3. 国内镜像 2 install: https://github.com/lzwme/scoop-proxy-cn
irm https://ghproxy.com/raw.githubusercontent.com/lzwme/scoop-proxy-cn/master/install.ps1 | iex
```

### Scoop 各种软件索引
https://rasa.github.io/scoop-directory/search

### 先安装必要的 App

```bash
scoop install git
scoop install aria2
```

### 添加必要的 Buckets

```bash
scoop bucket add extras
scoop bucket add sysinternals
scoop bucket add java
scoop bucket add Versions
scoop bucket add aki https://github.com/akirco/aki-apps.git
scoop bucket add scoopcn https://github.com/scoopcn/scoopcn.git
scoop bucket add subchen https://github.com/subchen/scoop-bucket.git
```

### 添加常用 App - 1

```bash
scoop install 7zip
scoop install extras/wox
#scoop install Versions/wox-beta
scoop install extras/everything
```

### 添加常用 App - UI

```bash
scoop install extras/geekuninstaller
scoop install sysinternals/autoruns
scoop install extras/fscapture
scoop install extras/snipaste
#scoop install Versions/snipaste-beta

scoop install extras/potplayer

scoop install extras/wechat
scoop install aki/mouseinc
```

### 添加常用 App - development

```bash
scoop install curl
scoop install openssl

scoop install java/openjdk8-redhat
scoop install java/openjdk17
scoop install java/openjdk21
scoop install maven
scoop install gradle

scoop install extras/idea-ultimate
scoop install extras/vscode
scoop install extras/jd-gui
scoop install subchen/dev-sidecar
scoop install extras/rapidee

scoop install docker
```



