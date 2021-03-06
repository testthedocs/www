#!/bin/sh
set -euo pipefail

# Re-set permission to the `ttd` user
# This avoids permission denied if the data volume is mounted by root
chown -R ttd:ttd /srv
exec su-exec ttd ablog "$@"
