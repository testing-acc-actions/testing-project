#!/bin/bash
set -e

APP_DIR="/opt/employee-management-app"
APP_JAR="${APP_DIR}/employee-management-app.jar"

echo "Configuring application permissions..."

if [ ! -f "$APP_JAR" ]; then
    echo "ERROR: Application JAR not found: $APP_JAR"
    exit 1
fi

chown root:root "$APP_JAR"
chmod 644 "$APP_JAR"

echo "Application JAR permissions configured."
