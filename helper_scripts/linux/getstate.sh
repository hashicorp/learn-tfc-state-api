#!/bin/bash

HTTP_CODE=$(curl \
     --header "Authorization: Bearer "$tfc_token"" \
     --header "Content-Type: application/vnd.api+json" \
     "https://app.terraform.io/api/v2/workspaces/"$workspace_id"/current-state-version" | jq -r '.data | .attributes | ."hosted-state-download-url"')

curl -o state.tfstate $HTTP_CODE
