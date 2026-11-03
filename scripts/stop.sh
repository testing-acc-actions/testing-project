#!/bin/bash
set -e

SERVICE_NAME="employee-management-app"

echo "Stopping ${SERVICE_NAME}..."

if systemctl is-active --quiet "$SERVICE_NAME"; then
    systemctl stop "$SERVICE_NAME"
    echo "Application stopped successfully."
else
    echo "Application is not currently running."
fi
