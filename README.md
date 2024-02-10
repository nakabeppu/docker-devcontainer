# Docker 環境構築

## 事前準備

以下のソフトウェアをインストール

- Docker
- DockerCompose
- VSCode
  - VSCode 拡張機能 : [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)

## 環境構築 1

※ 必ずこの方法でなければいけないわけではない

- Dockerfile でビルドしてもよい
- DockerCompose でビルドしてもよい

```shell
$ docker-compose build
```

- devcontainer を使う場合
  - Mac : `⌘` + `Shift` + `P`
  - Windows: `Ctrl` + `Shift` + `P`
  - Reopen in Container
- それ以外
  - Remote Development で「実行中のコンテナにアタッチ」

## 環境構築 2

Docker を使用しない場合

```shell
$ python3 -m venv .venv
$ source .venv/bin/activate
$ pip3 install --upgrade pip
$ pip3 install -r requirements.txt
```
