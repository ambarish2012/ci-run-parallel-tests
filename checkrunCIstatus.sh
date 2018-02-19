#!/bin/bash
statusCode=20
while [ $statusCode != 20 ]
do
  statusCode=$(curl -H "Authorization: apiToken 05267c17-ce42-464d-8770-cb34e05b8ee2" -H "Content-Type: application/json" https://api.shippable.com/runs/5a8b4b46ea36a107003cd194 | jq '.statusCode')
  echo $statusCode
done
