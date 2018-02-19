#!/bin/bash -e

statusCode=20
while [ $statusCode -ne 20 ]
do
  echo $statusCode
  #statusCode=$(curl -H "Authorization: apiToken 05267c17-ce42-464d-8770-cb34e05b8ee2" -H "Content-Type: application/json" "https://api.shippable.com/runs/1" | jq '.statusCode')
done
