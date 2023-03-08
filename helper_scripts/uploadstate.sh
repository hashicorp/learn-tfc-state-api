#!/bin/bash
# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0


 HTTP_POST=$(curl \
     --header "Authorization: Bearer "$TFC_TOKEN"" \
     --header "Content-Type: application/vnd.api+json" \
     --request POST \
     --data @payload.json \
     "https://app.terraform.io/api/v2/workspaces/"$WORKSPACE_ID"/state-versions")

 echo $HTTP_POST
