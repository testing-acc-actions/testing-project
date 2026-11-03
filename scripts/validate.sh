#!/bin/bash
set -e

SERVICE_NAME="employee-management-app"
APP_URL="http://localhost:8080/version"
MAX_ATTEMPTS=12

echo "Checking application service..."

if ! systemctl is-active --quiet "$SERVICE_NAME"; then
    echo "ERROR: Application service is not active."
    systemctl status "$SERVICE_NAME" --no-pager || true
    exit 1
fi

echo "Waiting for application health check..."

for attempt in $(seq 1 "$MAX_ATTEMPTS"); do
    if curl --fail --silent "$APP_URL"; then
        echo
        echo "Application validation successful."
        exit 0
    fi

    echo "Attempt ${attempt}/${MAX_ATTEMPTS}: Application not ready yet."
    sleep 5
done

echo "ERROR: Application did not respond successfully."
journalctl -u "$SERVICE_NAME" -n 50 --no-pager || true
exit 1
