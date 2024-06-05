#!/bin/bash

# Move the service file to the systemd directory
mv /opt/codapi/codapi.service /etc/systemd/system/

# Set the ownership of the service file to root
chown root:root /etc/systemd/system/codapi.service

# Enable the service to start at boot
systemctl enable codapi.service

# Start the service
systemctl start codapi.service

# Check the status of the service
systemctl status codapi.service


./codapi
