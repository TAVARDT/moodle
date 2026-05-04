#!/bin/bash
# ----------------------------------------------------------------------
# TAVARDT Elite Moodle Cron Automation
# ----------------------------------------------------------------------
# Instructions:
# 1. Place this file outside the public_html directory (e.g., /home/user/scripts/)
# 2. Make it executable: chmod +x secure-cron.sh
# 3. Add to crontab: * * * * * /home/user/scripts/secure-cron.sh >/dev/null 2>&1
# ----------------------------------------------------------------------

# Define the absolute path to your Moodle installation
MOODLE_DIR="/var/www/html/moodle"

# Path to PHP CLI executable (Ensure it matches your Moodle PHP version)
PHP_CLI="/usr/bin/php"

# Verify Moodle directory exists
if [ ! -d "$MOODLE_DIR" ]; then
    echo "Error: Moodle directory not found at $MOODLE_DIR"
    exit 1
fi

# Run the cron via CLI (Prevents web timeouts and bypasses web server limits)
$PHP_CLI $MOODLE_DIR/admin/cli/cron.php

# Optional: Log the execution timestamp for auditing
# echo "Moodle cron executed on $(date)" >> /var/log/moodle_cron_audit.log
