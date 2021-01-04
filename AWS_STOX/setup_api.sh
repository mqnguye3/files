api=proj2api
region=us-west-2
iam=284589297394



lambdarn=arn:aws:lambda:$region:$iam:function:http_handler_handler


ApiId=`aws apigatewayv2 create-api --name $api --protocol-type HTTP --target $lambdarn | jq '.ApiId' | tr -d '"'`
TargId=`aws apigatewayv2 create-integration --api-id $ApiId --integration-type AWS_PROXY --payload-format-version 2.0 --integration-uri $lambdarn | jq '.IntegrationId' | tr -d '"'`

aws apigatewayv2 create-route --api-id $ApiId --target integrations/$TargId --route-key 'GET /' 
aws lambda add-permission --statement-id defaultTrigger --action lambda:InvokeFunction --function-name $lambdarn --principal apigateway.amazonaws.com --source-arn arn:aws:execute-api:$region:$iam:$ApiId/*/ 



lambdarn1=arn:aws:lambda:$region:$iam:function:http_handler_create_tickr

TargId1=`aws apigatewayv2 create-integration --api-id $ApiId --integration-type AWS_PROXY --payload-format-version 2.0 --integration-uri $lambdarn1 | jq '.IntegrationId' | tr -d '"'`
aws apigatewayv2 create-route --api-id $ApiId --target integrations/$TargId1 --route-key 'POST /ticker' 
aws lambda add-permission --statement-id creatick --action lambda:InvokeFunction --function-name $lambdarn1 --principal apigateway.amazonaws.com --source-arn arn:aws:execute-api:$region:$iam:$ApiId/*/ticker

lambdarn2=arn:aws:lambda:$region:$iam:function:http_handler_delete_ticker

TargId2=`aws apigatewayv2 create-integration --api-id $ApiId --integration-type AWS_PROXY --payload-format-version 2.0 --integration-uri $lambdarn2 | jq '.IntegrationId' | tr -d '"'`
aws apigatewayv2 create-route --api-id $ApiId --target integrations/$TargId2 --route-key 'DELETE /ticker/{tickr}' 
aws lambda add-permission --statement-id deltick --action lambda:InvokeFunction --function-name $lambdarn2 --principal apigateway.amazonaws.com --source-arn arn:aws:execute-api:$region:$iam:$ApiId/*/ticker/{tickr}



lambdarn3=arn:aws:lambda:$region:$iam:function:http_handler_get_tickers

TargId3=`aws apigatewayv2 create-integration --api-id $ApiId --integration-type AWS_PROXY --payload-format-version 2.0 --integration-uri $lambdarn3 | jq '.IntegrationId' | tr -d '"'`
aws apigatewayv2 create-route --api-id $ApiId --target integrations/$TargId3 --route-key 'GET /tickers' 
aws lambda add-permission --statement-id getticks --action lambda:InvokeFunction --function-name $lambdarn3 --principal apigateway.amazonaws.com --source-arn arn:aws:execute-api:$region:$iam:$ApiId/*/tickers


lambdarn4=arn:aws:lambda:$region:$iam:function:http_handler_get_ticker

TargId4=`aws apigatewayv2 create-integration --api-id $ApiId --integration-type AWS_PROXY --payload-format-version 2.0 --integration-uri $lambdarn4 | jq '.IntegrationId' | tr -d '"'`
aws apigatewayv2 create-route --api-id $ApiId --target integrations/$TargId4 --route-key 'GET /ticker/{tickr}' 
aws lambda add-permission --statement-id gettick --action lambda:InvokeFunction --function-name $lambdarn4 --principal apigateway.amazonaws.com --source-arn arn:aws:execute-api:$region:$iam:$ApiId/*/ticker/{tickr}


lambdarn5=arn:aws:lambda:$region:$iam:function:http_handler_get_quotes

TargId5=`aws apigatewayv2 create-integration --api-id $ApiId --integration-type AWS_PROXY --payload-format-version 2.0 --integration-uri $lambdarn5 | jq '.IntegrationId' | tr -d '"'`
aws apigatewayv2 create-route --api-id $ApiId --target integrations/$TargId5 --route-key 'GET /quotes/{tickr}' 
aws lambda add-permission --statement-id getquots --action lambda:InvokeFunction --function-name $lambdarn5 --principal apigateway.amazonaws.com --source-arn arn:aws:execute-api:$region:$iam:$ApiId/*/quotes/{tickr}


lambdarn6=arn:aws:lambda:$region:$iam:function:http_handler_get_quote

TargId6=`aws apigatewayv2 create-integration --api-id $ApiId --integration-type AWS_PROXY --payload-format-version 2.0 --integration-uri $lambdarn6 | jq '.IntegrationId' | tr -d '"'`
aws apigatewayv2 create-route --api-id $ApiId --target integrations/$TargId6 --route-key 'GET /quote/{tickr}/{date-time}' 
aws lambda add-permission --statement-id getquot --action lambda:InvokeFunction --function-name $lambdarn6 --principal apigateway.amazonaws.com --source-arn arn:aws:execute-api:$region:$iam:$ApiId/*/quote/{tickr}/{date-time}


lambdarn7=arn:aws:lambda:$region:$iam:function:http_handler_add_quote

TargId7=`aws apigatewayv2 create-integration --api-id $ApiId --integration-type AWS_PROXY --payload-format-version 2.0 --integration-uri $lambdarn7 | jq '.IntegrationId' | tr -d '"'`
aws apigatewayv2 create-route --api-id $ApiId --target integrations/$TargId7 --route-key 'POST /quote' 
aws lambda add-permission --statement-id addquot --action lambda:InvokeFunction --function-name $lambdarn7 --principal apigateway.amazonaws.com --source-arn arn:aws:execute-api:$region:$iam:$ApiId/*/quote


lambdarn8=arn:aws:lambda:$region:$iam:function:http_handler_avg

TargId8=`aws apigatewayv2 create-integration --api-id $ApiId --integration-type AWS_PROXY --payload-format-version 2.0 --integration-uri $lambdarn8 | jq '.IntegrationId' | tr -d '"'`
aws apigatewayv2 create-route --api-id $ApiId --target integrations/$TargId8 --route-key 'GET /stat/avg/{tickr}/{date-time}/{period}' 
aws lambda add-permission --statement-id avg --action lambda:InvokeFunction --function-name $lambdarn8 --principal apigateway.amazonaws.com --source-arn arn:aws:execute-api:$region:$iam:$ApiId/*/stat/avg/{tickr}/{date-time}/{period} 