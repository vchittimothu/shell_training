#!/bin/bash
curl -sl https://pokeapi.co/api/v2/pokemon?limit=100000 | jq ".results[].name" -r
curl -sl https://pokeapi.co/api/v2/pokemon?limit=100000 | jq ".results[].name" -r | wc -l

