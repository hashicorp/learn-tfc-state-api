#!/bin/bash

 HTTP_POST=$(curl \
     --header "Authorization: Bearer "$tfc_token"" \
     --header "Content-Type: application/vnd.api+json" \
     --request POST \
     --data @payload.json \
     "https://app.terraform.io/api/v2/workspaces/"$workspace_id"/state-versions")

 echo $HTTP_POST
