[![WP Test](screenshot.png)](http://wptest.io)

## Description

[WP Test](http://wptest.io/) fantastically exhaustive set of test data to measure the integrity of your plugins and themes.

The foundation of these tests are derived from WordPress’ Theme Unit Test Codex data. It’s paired with lessons learned from over three years of theme and plugin support, and baffling corner cases, to create a potent cocktail of simulated, quirky user content.

The word "comprehensive" was purposely left off this description. It's not. There will always be something new squarely scenario to test. That's where you come in. [Let us know](http://wptest.io/contact/) of a test we're not covering. We'd love to squash it.

Let’s make WordPress testing easier and resilient together.

## Installation

Follow the steps below to import the WP Test data:

1. Download the [data](https://github.com/manovotny/wptest/archive/master.zip) from the repository.
2. Unzip the download on your computer.
3. Launch your WordPress site.
4. Navigate to `Tools > Import` in the WordPress admin.
5. Click on `WordPress` and install the [WordPress Importer](http://wordpress.org/extend/plugins/wordpress-importer/) plugin, if it's not already installed, and click `Activate Plugin & Run Importer` after the installation completes.
6. Choose the `wptest.xml` file you extracted from the zip in Step 2 and click `Upload file and import`.
7. On the next screen, do not change or reassign anything about the authors and make sure you check the `Download and import file attachments` box before you click `Submit`.
8. Let the import process run until complete. *Do not close the browser tab / window or navigate away from page while importing.* You should see an `All done. Have fun!` message when the import is complete.
8. Test away and please [contribute](http://wptest.io/contact/) any of tests cases you feel are missing.

## Credit

* [Michael Novotny](http://manovotny.com)

## License

* [GPL](http://www.gnu.org/licenses/gpl-3.0.html)