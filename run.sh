out_dir="reports";

if [ ! -e "$out_dir" ]; then
	mkdir -p "$out_dir";
fi

docker build -t speedtest . && docker run -i speedtest > "$out_dir/speedtest_$(date '+%F_%T').txt"
