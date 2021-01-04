 change region,subnet,secruitygroup,port,iam  to user specificiation
 1. run setup.sh to setup memcache

 wait a minute or so for memcache to fully create itself

 change endpoints in build-lambda.sh as well as make sure the subnet,sg,iam and other information is correct
 2. run setup_venv.sh


in setup_api.sh change api, region, and iam  to fit user

3. run setup_api.sh
	3a. this should make the routes and integration between the http api and lambda function.
		ocassionally it will not recongize, in this case. it must be manually done. All that needs to be done is to eddit the integration and reapply it.
		GET / = http_handler_handler
		POST /quote = http_handler_add_quote 
		GET /quote/{tickr}/{date-time} = http_handler_get_quot
		GET /quotes/{tickr} = http_handler_get_quotes
		GET /stat/avg/{tickr}/{date-time}/{period} = http_handler_avg
		POST /ticker = http_handler_create_tickr
		GET /ticker/{tickr} = http_handler_get_ticker
		DELETE /ticker/{tickr} = http_handler_delete_ticker
		GET /tickers = http_handler_get_tickers



4. in q_uploader on lines 35-36 & 55-56 replace http url with api invoke url in the parameters

5. testing other functions replacing the URL and parameters to fit testing needs

curl https://fwlvwh64vf.execute-api.us-west-2.amazonaws.com/tickers
curl https://fwlvwh64vf.execute-api.us-west-2.amazonaws.com/ticker/{tickr}
curl -i -H "Content-Type: application/json" -X POST -d '{"ticker":"T8", "name":"Test8"}' https://fwlvwh64vf.execute-api.us-west-2.amazonaws.com/ticker
curl -i  -X DELETE https://fwlvwh64vf.execute-api.us-west-2.amazonaws.com/ticker/{tickr}
curl https://fwlvwh64vf.execute-api.us-west-2.amazonaws.com/quotes/{tickr}
curl https://fwlvwh64vf.execute-api.us-west-2.amazonaws.com/quote/{tickr}/{date-time}
curl -i -H "Content-Type: application/json" -X POST  -d '{"ticker":"T6","date":"20201031", "time":"085000","open":"110.5", "high":"111.17","low":"110.64", "close":"110.64", "vol":"5684400"}' https://fwlvwh64vf.execute-api.us-west-2.amazonaws.com/quote
curl avg = https://fwlvwh64vf.execute-api.us-west-2.amazonaws.com/stat/avg/{tickr}/{date-time}/{period}
