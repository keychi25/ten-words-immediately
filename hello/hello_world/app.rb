# require 'httparty'
require 'json'
require 'aws-sdk-dynamodb'

def lambda_handler(event:, context:)
  http_method = 'GET'

  # dynamodb = Aws::DynamoDB::Resource.new(region: 'ap-northeast-1')
  dynamo = Aws::DynamoDB::Client.new(
  # app.rubyはDocker上で実行されるため、localhostを指定するとアクセスに失敗する。ifconfig等でホストマシンのグローバルIPを確認してIPを指定する。
        endpoint: 'http://192.168.10.121:8000'
  )
  table_info = dynamo.describe_table({table_name: "test-table"}) 
  {
    statusCode: 200,
    body: {
      message: "Hello World!",
      table_info: table_info.to_h
      # location: response.body
    }.to_json
  }
end
