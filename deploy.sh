#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

REMOTE="root@web-portfolio"
REMOTE_DIR="/var/www/portfolio"

npm run build

rsync -avz --delete dist/ "$REMOTE:$REMOTE_DIR/"