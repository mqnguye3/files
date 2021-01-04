./build-lambda.sh newboto http_handler http_handler
./build-lambda.sh newmem http_handler http_handler


echo 'Now uploading lambda functions'

./build-lambda.sh new http_handler handler
./build-lambda.sh create http_handler handler

./build-lambda.sh new http_handler delete_ticker
./build-lambda.sh create http_handler delete_ticker

./build-lambda.sh new http_handler get_quotes
./build-lambda.sh create http_handler get_quotes


./build-lambda.sh new http_handler get_quote
./build-lambda.sh create http_handler get_quote


./build-lambda.sh new http_handler add_quote
./build-lambda.sh create http_handler add_quote


./build-lambda.sh new http_handler avg
./build-lambda.sh create http_handler avg


./build-lambda.sh new http_handler get_ticker
./build-lambda.sh create http_handler get_ticker

./build-lambda.sh new http_handler get_tickers
./build-lambda.sh create http_handler get_tickers

./build-lambda.sh new http_handler create_tickr
./build-lambda.sh create http_handler create_tickr
