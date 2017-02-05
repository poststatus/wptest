#!/bin/sh
#
# WP Test - WP-CLI Quick Install Script
# http://wptest.io/
#
# Note: This script assumes you have wp-cli installed.
#####################################################################################

# Ask user where WordPress is installed.
printf "Please provide the local path to your WordPress install: "
read WPPATH

# Import WP Test data.
cd $WPPATH
curl -OL https://raw.githubusercontent.com/manovotny/wptest/master/wptest.xml
wp import wptest.xml --authors=create
rm wptest.xml
