#!/bin/bash
# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0


serial=$(cat state.tfstate | jq '.serial')
md5_compute=$(md5 -q state.tfstate)
md5=\"$md5_compute\"
lineage=$(cat state.tfstate | jq '.lineage')
base64_encode=$(base64 -i state.tfstate)
state=\"$base64_encode\"


echo "{
   \"data\": {
   \"type\": \"state-versions\",
     \"attributes\": {
       \"serial\": $serial,
       \"md5\": "$md5",
       \"lineage\": "$lineage",
       \"state\": "$state"
     }
   }
 }" > payload.json
