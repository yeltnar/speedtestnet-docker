out_dir="reports";

if [ ! -e "$out_dir" ]; then
	mkdir -p "$out_dir";
fi

docker build -t speedtest . && docker run -t -e TZ=America/Chicago speedtest > "$out_dir/speedtest_$(date '+%F_%T' | sed s/:/-/g).txt"
