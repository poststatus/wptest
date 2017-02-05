#!/bin/sh
#
# WP Test - WP-CLI Quick Install Script
# http://wptest.io/
#
# Note: This script assumes you have wp-cli installed.
#####################################################################################

# Check for flag usage.
# If more flags are added here, this could probably be simplified a bit better.
case "$1" in
    "--allow-root")
        ALLOWROOT=$1
        ;;
    "")
        ALLOWROOT=""
        ;;
    *)
        printf "Invalid flag provided. Allowed flags: --allow-root.\n"
        exit
        ;;
esac

# Ask user where WordPress is installed.
printf "Please provide the local path to your WordPress install: "
read WPPATH

# Ask the user what data they want to import.
printf "Use a local xml file? [y/N]"
read USELOCAL

# Move to the WordPress installation location.
cd $WPPATH

# Include the WordPress importer
wp plugin install wordpress-importer --activate $ALLOWROOT

# Check if a custom path is being used.
if [ "$USELOCAL" = 'y' ]; then
    # Get the path to the xml file.
    printf "Please provide the absolute local path to your xml file: "
    read XMLPATH
    # Import the local file.
    wp import $XMLPATH --authors=create $ALLOWROOT
else
    # Check for cURL.
    if ! command -v curl > /dev/null 2>&1; then
        printf "cURL is not installed or accessible. Install cURL to use remote xml files.\n"
        exit
    fi

    # Get the xml file.
    curl -OL https://raw.githubusercontent.com/poststatus/wptest/master/wptest.xml
    # Import the file, then delete it.
    wp import wptest.xml --authors=create $ALLOWROOT
    rm wptest.xml
fi