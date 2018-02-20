#!/bin/bash -e
statusCode=20
while [ $statusCode -eq 20 ]
do
  response=$(curl -H "Authorization: apiToken 4a3195bc-1d92-4bf7-9758-999469733f56" -H "Content-Type: application/json" "https://api.shippable.com/runs/$runId")
  echo $response
  statusCode=$(echo $response | jq '.statusCode')
  echo $statusCode
  if [ "$statusCode" -eq 20 ]; then sleep 5; fi;
done
