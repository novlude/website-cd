# Website CD

GitOps CD for website

## Usage

```bash
SOURCE_DIR=/path/to/source/repo PUBLIC_DIR=/path/to/document/root ./website_cd.sh
```

Maybe you want to create a shell script executable.

```bash
#!/bin/bash
set -euo pipefail

LOCK_FILE=/tmp/website_cd.lock
SOURCE_DIR=/path/to/source/repo
PUBLIC_DIR=/usr/share/nginx

flock "${LOCK_FILE}" env SOURCE_DIR="${SOURCE_DIR}" PUBLIC_DIR="${PUBLIC_DIR}" /path/to/script/website_cd.sh
```

It`s nice to add the script to cron.

```bash
crontab
* * * * * /home/nobk/cron/website_cd.sh
```

