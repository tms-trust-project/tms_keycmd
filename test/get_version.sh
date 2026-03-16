#!/bin/bash
#
#curl -k -X GET https://129.114.35.127:3001/v1/tms/version | jq
#curl -X GET https://tms-server-prod.tacc.utexas.edu:3000/v1/tms/version | jq
#curl -X GET https://tms-server-dev.tacc.utexas.edu:3000/v1/tms/version | jq
set -xv
curl -X GET ${TMS_URL}/v1/tms/version | jq
