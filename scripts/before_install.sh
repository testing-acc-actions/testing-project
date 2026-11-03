#!/bin/bash
set -e

APP_DIR="/opt/employee-management-app"

echo "Preparing application directory..."

mkdir -p "$APP_DIR"

chown root:root "$APP_DIR"
chmod 755 "$APP_DIR"

echo "Application directory is ready."
