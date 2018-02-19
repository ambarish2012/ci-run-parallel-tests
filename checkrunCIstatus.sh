#!/bin/bash -e
statusCode=20
while [ $statusCode -eq 20 ]
do
  response=$(curl -H "Authorization: apiToken 05267c17-ce42-464d-8770-cb34e05b8ee2" -H "Content-Type: application/json" "https://api.shippable.com/runs/$runId")
  echo $response
  statusCode=$(echo $response | jq '.statusCode')
  echo $statusCode
done
