#!/bin/bash
set -euo pipefail

SCRIPT_DIR=$(realpath "$(dirname $0)")

cd "${SOURCE_DIR}"
git fetch

if [[ -z $(git rev-list HEAD..origin/main) ]]; then
	echo "[INFO] No updates. Exit."
	exit 0
fi

${SCRIPT_DIR}/deploy.sh
