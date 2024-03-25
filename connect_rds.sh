#!/bin/bash

cd "$(dirname "$0")"
source .env

if [ -z "$RDS_ENDPOINT" ]; then
    echo "環境変数(.env)にRDS_ENDPOINTが設定されていません。"
    exit 1
fi

psql -h $RDS_ENDPOINT -p 5432 -U postgres