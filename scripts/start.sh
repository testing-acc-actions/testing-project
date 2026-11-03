#!/bin/bash
set -e

SERVICE_NAME="employee-management-app"
APP_DIR="/opt/employee-management-app"
SERVICE_FILE="/etc/systemd/system/${SERVICE_NAME}.service"

echo "Creating systemd service..."

cat > "$SERVICE_FILE" <<EOF
[Unit]
Description=Employee Management Java Application
After=network.target

[Service]
Type=simple
User=root
WorkingDirectory=${APP_DIR}
ExecStart=/usr/bin/java -jar ${APP_DIR}/employee-management-app.jar
Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable "$SERVICE_NAME"
systemctl restart "$SERVICE_NAME"

echo "Employee Management Application started."
