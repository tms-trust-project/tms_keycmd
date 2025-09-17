#!/bin/bash
#
#REQ_JSON=delete_keypair_req.json
# Test tenant=test, client=testclient1, secret=secret
REQ_JSON=$1
set -xv
curl -k -X DELETE -H "content-type: application/json" \
       	-H "X-TMS-TENANT: $TMS_TENANT" \
       	-H "X-TMS-CLIENT-ID: $TMS_CLIENT_ID" \
       	-H "X-TMS-CLIENT-SECRET: $TMS_CLIENT_KEY" \
	$TMS_URL/v1/tms/pubkeys/del -d @$1
