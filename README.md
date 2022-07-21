# 10 words immediately

# Requirement

- aws sam
- Docker
- Docker Compose

# Instration

## Samの設定
[公式ドキュメント](https://docs.aws.amazon.com/ja_jp/serverless-application-model/latest/developerguide/serverless-sam-cli-install-linux.html)

# Usage

## Docker Networkの作成

```sh
# docker-composeで設定したnetworkを作成する
$ docker network create ten-words-30s-network
```

## DynamoDBの起動

```sh
# localhost:8001で管理画面を起動
$ docker-compose up --build
```

## Samの実行

```sh
#　ビルドする
$ sam build --use-container -t hello/template.yaml
#　起動する（起動したコンテナ内からDynammoDBにアクセスするためにネットワークを指定している）
$ sam local start-api -p 1111 --docker-network ten-words-30s-network -t hello/template.yaml
```

## Reactの実行

```sh
# ディレクトリの移動
$ webs
# パッケージの依存関係解消
$ yarn install
# 起動
$ yarn start
```

# Note
