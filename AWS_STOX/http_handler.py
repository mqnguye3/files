import json
import ast
import elasticache_auto_discovery
from pymemcache.client.hash import HashClient


#elasticache settings
elasticache_config_endpoint = "my-subnet.vbjtde.cfg.usw2.cache.amazonaws.com:11211"
nodes = elasticache_auto_discovery.discover(elasticache_config_endpoint)
nodes = map(lambda x: (x[1], int(x[2])), nodes)
memcache_client = HashClient(nodes)



def handler(event, context):
    return {'statusCode': 200, 'body':'Main Page'}



# curl https://fwlvwh64vf.execute-api.us-west-2.amazonaws.com/tickers

def get_tickers(event,context):
    dic = memcache_client.get('list')
    dic_s = dic.decode('UTF-8')
    dic_1 = ast.literal_eval(dic_s)
    data = {}
    for entries in dic_1:
        if memcache_client.touch(entries) is True and memcache_client.get(entries) != None:
            data[entries] =  dic_1[entries]
	    	
    return {'statusCode': 200, 'body': json.dumps(data,indent=4)}

# curl https://fwlvwh64vf.execute-api.us-west-2.amazonaws.com/ticker/
def get_ticker(event, context):

    #ticker = memcache_client.get(t_info)

    
    #s = '{} : {}'.format(ticker[0],quotes[ticker[0]].get('name'))

    try:
        body = event['pathParameters']
        ticker = body['tickr']
        dic = memcache_client.get(ticker)
        dic_s = dic.decode('UTF-8')
        dic_1 = ast.literal_eval(dic_s)

        name = dic_1
        data = {}
        data[ticker] = name


        return {'statusCode': 200, 'body': json.dumps(data, indent=4)}
    except Exception as e:
    	return {'statusCode': 404, 'body': 'Does not exist'}



#curl -i -H "Content-Type: application/json" -X POST -d '{"ticker":"T8", "name":"Test8"}' https://fwlvwh64vf.execute-api.us-west-2.amazonaws.com/ticker

def create_tickr(event, context):
	body = json.loads(event['body'])
	name = body['name']
	ticker = body['ticker']
	n_ticker = {'name' : name, 'quotes': {}}

	memcache_client.set(ticker, n_ticker)

	dic = memcache_client.get('list')
	dic_s = dic.decode('UTF-8')
	dic_1 = ast.literal_eval(dic_s)
	data = dic_1
	data[ticker] = name
	stox_list = memcache_client.set('list',data)
	 


	return {'statusCode': 200, 'body': 'Done'}



#curl -i  -X DELETE https://fwlvwh64vf.execute-api.us-west-2.amazonaws.com/ticker/{tickr}
def delete_ticker(event,context):


	body = event['pathParameters']
	ticker = body['tickr']
	memcache_client.delete(ticker)

	return {'statusCode': 200, 'body':'Deleted'}




#curl https://fwlvwh64vf.execute-api.us-west-2.amazonaws.com/quotes/{tickr}
def get_quotes(event,ticker):
    try:
        body = event['pathParameters']
        ticker = body['tickr']
        dic = memcache_client.get(ticker)
        dic_s = dic.decode('UTF-8')
        dic_1 = ast.literal_eval(dic_s)

        name = dic_1
        data = {}
        data[ticker] = name


        return {'statusCode': 200, 'body': json.dumps(data[ticker]['quotes'], indent=4)}
    except Exception as e:
        return {'statusCode': 404, 'body': 'Does not exist'}
    




#curl https://fwlvwh64vf.execute-api.us-west-2.amazonaws.com/quote/{tickr}/{date-time}

def get_quote(event,context):
    try:
        body = event['pathParameters']
        ticker = body['tickr']
        date_time = body['date-time']
        dic = memcache_client.get(ticker)
        dic_s = dic.decode('UTF-8')
        dic_1 = ast.literal_eval(dic_s)

        name = dic_1
        data = {}
        data[ticker] = name


        return {'statusCode': 200, 'body': json.dumps(data[ticker]['quotes'][date_time], indent=4)}
    except Exception as e:
        return {'statusCode': 404, 'body': 'Does not exist'}
    


#curl -i -H "Content-Type: application/json" -X POST  -d '{"ticker":"T6","date":"20201031", "time":"085000","open":"110.5", "high":"111.17","low":"110.64", "close":"110.64", "vol":"5684400"}' https://fwlvwh64vf.execute-api.us-west-2.amazonaws.com/quote
def add_quote(event, context):
	body = json.loads(event['body'])
	ticker = body['ticker']
	date_time = body['date'] + '-' + body['time']
	quote = [body['open'],body['high'],body['low'], body['close'], body['vol']]

	dic = memcache_client.get(ticker)
	dic_s = dic.decode('UTF-8')
	dic_1 = ast.literal_eval(dic_s)

	dic_1['quotes'][date_time] = quote

	memcache_client.set(ticker,dic_1)



	return {'statusCode': 200, 'body':'Added'}


#curl avg = https://fwlvwh64vf.execute-api.us-west-2.amazonaws.com/stat/avg/T6/20201031-085000/3
def avg(event,context):

    body = event['pathParameters']
    ticker = body['tickr']
    date_time = body['date-time']
    period = body['period']
    dic = memcache_client.get(ticker)
    dic_s = dic.decode('UTF-8')
    dic_1 = ast.literal_eval(dic_s)
    name = dic_1
    data = {}
    data[ticker] = name
    f_period = float(period)


    avg_quote = 0
    stox_total = 0
    price = data[ticker]['quotes'][date_time]
    stox_total = float(price[0]) + float(price[1]) + float(price[2]) + float(price[3])
    avg_quote = stox_total/f_period

    return {'statusCode': 200, 'body':json.dumps(avg_quote,indent=4)}
