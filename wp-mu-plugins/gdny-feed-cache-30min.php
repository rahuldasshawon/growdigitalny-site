<?php
/**
 * Plugin Name: GDNY - Feed cache 30 minutes
 * Description: Refresh RSS feeds (e.g. the RSS blocks on /tech-news/) every 30 minutes instead of 12 hours. Delete this file to undo.
 * Author: Grow Digital NY
 * Version: 1.0
 */
defined( 'ABSPATH' ) || exit;

add_filter( 'wp_feed_cache_transient_lifetime', function () {
	return 30 * MINUTE_IN_SECONDS; // 1800 seconds
} );
