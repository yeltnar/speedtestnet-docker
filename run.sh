docker build -t speedtest . && docker run -i speedtest > "speedtest_$(date '+%F_%T').txt"
