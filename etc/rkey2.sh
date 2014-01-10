#!/bin/sh
CTL=$1

$CTL set_parameter shard routing-key '"4321"'
$CTL set_parameter shard-definition rkey2 '{"local-username": "guest", "shards-per-node": 2}'
$CTL set_policy rkey2-shard   "^rkey2\."   '{"shard-definition": "rkey2"}'
