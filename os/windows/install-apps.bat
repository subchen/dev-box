// powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

// offical install
irm get.scoop.sh | iex

// 国内镜像 https://github.com/lzwme/scoop-proxy-cn
irm https://ghproxy.com/raw.githubusercontent.com/lzwme/scoop-proxy-cn/master/install.ps1 | iex


// scope 各种软件目录
// https://rasa.github.io/scoop-directory/search

// cmd
scoop bucket add extras
scoop bucket add java
scoop bucket add scoopcn https://github.com/scoopcn/scoopcn.git


scoop install aria2

scoop install curl openssl git 


scoop install openjdk8-redhat openjdk17 openjdk21 maven

scoop install idea
scoop install vscode


scoop bucket add aki-apps https://github.com/akirco/aki-apps
scoop install aki-apps/mouseinc


