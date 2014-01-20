#!/bin/sh
#
# wptest.io Quick Install Script
# http://wptest.io/
#
# Note: This script assumes you have wp-cli installed.
##########################################################

# Get WordPress Path
printf "Please provide the local path to your WordPress install: "
read WPPATH

# Import WP TESTS
cd $WPPATH
curl -O https://raw.github.com/manovotny/wptest/master/wptest.xml
wp import wptest.xml --authors=create
rm wptest.xml
