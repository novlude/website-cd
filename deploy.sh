#!/bin/bash
set -euo pipefail

rsync -a --delete "${SOURCE_DIR}"/html "${PUBLIC_DIR}"
