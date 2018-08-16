#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

psql -v ON_ERROR_STOP=1 --username "${POSTGRES_USER}" <<-EOSQL
    \c ${POSTGRES_USER}

    CREATE EXTENSION IF NOT EXISTS pgcrypto;
    CREATE EXTENSION IF NOT EXISTS citext
EOSQL

