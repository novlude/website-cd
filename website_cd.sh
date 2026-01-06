#!/bin/bash
set -euo pipefail

cd "${SOURCE_DIR}"
git fetch

if [[ -z $(git rev-list HEAD..origin/main) ]]; then
	echo "[INFO] No updates. Exit."
	exit 0
fi

echi "[INFO] Update detected. Starting pull and deploy."

git pull
rsync -a --delete "${SOURCE_DIR}"/html "${PUBLIC_DIR}"
