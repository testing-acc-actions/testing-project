#!/bin/bash
set -e

APP_DIR="/opt/employee-management-app"
APP_USER="employeeapp"

echo "Preparing application user and directory..."

# Create application user if it does not exist
if ! id "$APP_USER" &>/dev/null; then
    useradd --system --no-create-home --shell /sbin/nologin "$APP_USER"
fi

# Create application directory
mkdir -p "$APP_DIR"

# Set directory ownership
chown "$APP_USER:$APP_USER" "$APP_DIR"
chmod 755 "$APP_DIR"

echo "Application user and directory are ready."
