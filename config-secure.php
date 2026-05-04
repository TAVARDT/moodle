<?php
/**
 * TAVARDT Elite Moodle Security Configuration Snippets
 * 
 * Instructions: Add these snippets to your Moodle config.php file, 
 * ensuring you do not overwrite database connection variables.
 */

// 1. Force HTTPS for all logins and sessions (Crucial for B2B)
$CFG->loginhttps = true;

// 2. Prevent insecure cookies
$CFG->cookiesecure = true;
$CFG->cookiehttponly = true;

// 3. Disable update notifications to prevent footprinting
$CFG->disableupdatenotifications = true;

// 4. Disable debugging in production to prevent path disclosure
$CFG->debug = 0;
$CFG->debugdisplay = 0;

// 5. Performance: Use Redis for Session Handling (Requires Redis Server)
// This prevents database locks during high traffic periods
$CFG->session_handler_class = '\core\session\redis';
$CFG->session_redis_host = '127.0.0.1';
$CFG->session_redis_port = 6379;
$CFG->session_redis_prefix = 'moodle_sess_';

// 6. Security: Prevent framing to mitigate Clickjacking
$CFG->preventframing = true;
