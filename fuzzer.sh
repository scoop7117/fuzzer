#!/bin/bash
# Basic Fuzzer Bash Script

# Specify the target URL or IP address here
TARGET_URL="http://example.com/"

# Specify the payload list here
PAYLOAD_LIST=("'" "\"")

# Specify the target endpoint or parameter here
TARGET_ENDPOINT="login.php"
TARGET_PARAMETER="username"

# Loop through each payload in the list
for PAYLOAD in "${PAYLOAD_LIST[@]}"
do
    # Build the request URL with the payload
    REQUEST_URL="${TARGET_URL}${TARGET_ENDPOINT}?${TARGET_PARAMETER}=${PAYLOAD}"

    # Send the request with cURL
    curl -X POST $REQUEST_URL

    # Pause for 1 second to avoid overwhelming the server
    sleep 1
done
