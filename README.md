# 10 words immediately

# 概要（メモ）

30秒で音声認識を用いてお題にあった内容を自動的に入力する。　　
「30秒で10個の単語を思い出す」の単語、言えた数、ランダムなお題を管理するもの(できればネイティブアプリ)


再生中で一個単位(押し続ける)

入力するモードもあり？
(30秒だけ計測して後から入力可能な感じ)

# Instration

## Samの設定
[公式ドキュメント](https://docs.aws.amazon.com/ja_jp/serverless-application-model/latest/developerguide/serverless-sam-cli-install-linux.html)

# Samの実行

```sh
$ sam build --use-container -t hello/template.yaml
$ sam local start-api -p 1111 -t hello/template.yaml
```
