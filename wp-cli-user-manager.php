<?php
// wp-cli-user-manager.php

if ( defined( 'WP_CLI' ) && WP_CLI ) {
    WP_CLI::add_command( 'user greet', function( $args, $assoc_args ) {
        $user = $args[0] ?? 'Guest';
        WP_CLI::success( "Hello, $user! Welcome to WordPress via WP-CLI." );
    });
}
