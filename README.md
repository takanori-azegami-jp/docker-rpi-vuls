# docker-rpi-vuls

RaspberryPi(64bit)に Docker で脆弱性スキャナーの vuls を構築

## 環境

## 環境構築＆実行

```bash
# Dockerビルド
$ docker-compose up -d --build
# vulsセットアップ
$ sh setup.sh
# スキャン＆レポート作成
$ sh scan2report.sh
```

## 結果の確認

下記 URL に接続

```
http://[IPアドレス]:5111
```

## 参考

- [Tutorial - Scan using Docker](https://vuls.io/docs/ja/tutorial-docker.html)
- [bossjones/vuls-docker-compose](https://github.com/bossjones/vuls-docker-compose)
