#!/bin/bash

HTTP_RESPONSE=$(curl \
     --header "Authorization: Bearer "$TFC_TOKEN"" \
     --header "Content-Type: application/vnd.api+json" \
     "https://app.terraform.io/api/v2/workspaces/"$WORKSPACE_ID"/current-state-version" | jq -r '.data | .attributes | ."hosted-state-download-url"')

curl -o state.tfstate $HTTP_RESPONSE
