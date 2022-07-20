# 10 words immediately

# 概要（メモ）
# Instration

## Samの設定
[公式ドキュメント](https://docs.aws.amazon.com/ja_jp/serverless-application-model/latest/developerguide/serverless-sam-cli-install-linux.html)

# Samの実行

```sh
$ sam build --use-container -t hello/template.yaml
$ sam local start-api -p 1111 -t hello/template.yaml
```
