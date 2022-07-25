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

## DynamoDB + Amazon SQSの起動

```sh
# localhost:8001でDynamoDBの管理画面を起動
# localhost:9324でSQSを実行
$ docker-compose up --build
```

## Samの実行

```sh
#　ビルドする
$ sam build --use-container -t apis/hello/template.yaml
#　起動する（起動したコンテナ内からDynammoDBにアクセスするためにネットワークを指定している）
$ sam local start-api -p 1111 --docker-network ten-words-30s-network -t apis/hello/template.yaml
```

## Reactの実行

```sh
# ディレクトリの移動
$ web
# パッケージの依存関係解消
$ yarn install
# 起動
$ yarn start
```

## SQSの実行

```sh
# QueueURL一覧の取得（list-queue）
$ aws sqs list-queues --endpoint-url http://localhost:9324
# Queueの作成（create-queue）
$ aws sqs create-queue --queue-name queue --endpoint-url http://localhost:9324
# メッセージの作成（send-message）
$ aws sqs send-message --queue-url http://localhost:9324/000000000000/queue --message-body "massage" --endpoint-url http://localhost:9324
# メッセージの取得（receive-message）
$ aws sqs receive-message --queue-url http://localhost:9324/000000000000/queue --endpoint-url http://localhost:9324
# メッセージの削除（delete-massage）
$ aws sqs delete-message --queue-url http://localhost:9324/000000000000/queue --receipt-handle [ReceiptHandle] --endpoint-url http://localhost:9324
# キューの削除（delete-queue）
$ aws sqs delete-queue --queue-url http://localhost:9324/000000000000/queue --endpoint-url http://localhost:9324
```
# Note

## SQS
- [Amazon SQSをローカルで実行する](https://techgrowup.net/2021/08/17/amazon-sqs/)
