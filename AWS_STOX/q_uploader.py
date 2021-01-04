
import subprocess
import os


for filename in os.listdir(os.chdir("./stox")):
	with open(os.path.join(os.getcwd(),filename), 'r') as f:
		print(filename)

		count = 0
		next(f)

		line = f.readline()
		stox_name = " "


		if filename == "csco.us.txt":
			stox_name = "CISCO"
		elif filename == "aapl.us.txt":
			stox_name = "APPLE"
		elif filename == "goog.us.txt":
			stox_name = "GOOGLE"
		elif filename == "amzn.us.txt":
			stox_name = "AMAZON"
		elif filename == "aal.us.txt":
			stox_name = "AMERICAN AIRLINES"
		elif filename == "fb.us.txt":
			stox_name = "FACEBOOK"
		else:
			break
		#makes new ticker

		
		s =(line.split(","))
		command = """curl -i -H "Content-Type: application/json" -X POST -d '{{"ticker":"{}", "name":"{}"}}' 	https://y5mkx9sfj6.execute-api.us-west-2.amazonaws.com/ticker""".format(s[0],stox_name)
		subprocess.run(command, shell=True)

		#add all ticker quotes into ticker
		while True:
			count += 1
			read_next = f.readline()

			if not read_next:
				break

			q = (read_next.split(","))
			t_name = q[0]
			t_date = q[2]
			t_time = q[3]
			t_open = q[4]
			t_high = q[5]
			t_low  = q[6]
			t_clos = q[7]
			t_vol =  q[8]
			t_command = """curl -i -H "Content-Type: application/json" -X POST  -d '{{"ticker":"{}","date":"{}", "time":"{}","open":"{}", "high":"{}","low":"{}", "close":"{}", "vol":"{}"}}' 	https://y5mkx9sfj6.execute-api.us-west-2.amazonaws.com/quote""".format(t_name,t_date,t_time,t_open,t_high,t_low,t_clos,t_vol)
			#AAL.US ,5,20200812,153000,14.04,14.06,13.725,13.8419,4146686,0
			subprocess.run(t_command, shell = True)





