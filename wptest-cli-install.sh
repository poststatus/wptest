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

# Ask the user what data they want to import.
printf "Use a local xml file? [y/N]"
read USELOCAL

# Move to the WordPress installation location.
cd $WPPATH

# Check if a custom path is being used.
if [ "$USELOCAL" == 'y' ]; then
    # Get the path to the xml file.
    printf "Please provide the absolute local path to your xml file: "
    read XMLPATH
    # Import the local file.
    wp import $XMLPATH --authors=create
else
    # Get the xml file.
    curl -OL https://raw.githubusercontent.com/manovotny/wptest/master/wptest.xml
    # Import the file, then delete it.
    wp import wptest.xml --authors=create
    rm wptest.xml
fi