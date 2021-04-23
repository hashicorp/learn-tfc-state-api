#!/bin/bash

 HTTP_POST=$(curl \
     --header "Authorization: Bearer "$TFC_TOKEN"" \
     --header "Content-Type: application/vnd.api+json" \
     --request POST \
     --data @payload.json \
     "https://app.terraform.io/api/v2/workspaces/"$WORKSPACE_ID"/state-versions")

 echo $HTTP_POST
