#!/bin/bash

api="https://workingvpn.com/api/extension"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36"

function get_servers() {
	curl --request GET \
		--url "$api/servers" \
		--user-agent "$user_agent"
}

function get_status() {
	curl --request GET \
		--url "$api/status" \
		--user-agent "$user_agent"
}
