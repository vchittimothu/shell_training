#!/bin/bash
curl -sl https://pokeapi.co/api/v2/pokemon?limit=100000 | jq ".results[].name" -r
count=$(curl -sl https://pokeapi.co/api/v2/pokemon?limit=100000 | jq ".results[].name" -r | wc -l)
echo "Total Pokeapi's count is $count ......"

