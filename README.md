[![WP Test](screenshots/logo.png)](http://wptest.io)

## Description

[WP Test](http://wptest.io/) is a fantastically exhaustive set of test data to measure the integrity of your plugins and themes.

This test data comes packed with lessons learned from over four years of theme and plugin support, and baffling corner cases, to create a potent cocktail of simulated, quirky user content.

WP Test still offers the following benefits over the WordPress Unit Test data.

### Transparency

Without question, the WordPress Theme Unit Test Codex data is good place to start, but it can lag in updates. And when the test data did update, there was no indication of what had changed within the data.

WP Test comes with [release notes](#release-notes) indicating what has been added, removed, or changed within the data for each release.

### Contribution & Community

Contributing to the WordPress Codex is fairly straightforward, but contributing to the test data is not.

By using GitHub to host the WP Test data, anyone is free to [contribute](#contributing) to the project in a multitude of ways.

### Life

Testing can be tedious and boring, but there is no need for the test data itself to be mundane. Lorem ipsum is effective and it does simulate text flow fairly well, but it’s boring as hell. 

Content should come with life and character. There are no testing benefit to this, but it does inject personality and fun into traditionally dry content. This alone is a good enough reason for it to exist in this way.

### Guided Help

Not only is the WP Test data content funny, it’s smart and helpful.

Whenever possible, the test data references the WordPress Codex for best practices and function references.

These kind of integration into the test data will only increase over time and lessen the barrier to resolving the issues the test data uncovers.

## Installation

WP Test can be installed one of two ways, either via the [WordPress Admin](#installation-via-wordpress-admin) or via [WP-CLI](#installation-via-wp-cli).

### Installation via WordPress Admin

1. Download the [data](https://github.com/manovotny/wptest/archive/master.zip) from the repository.
- Unzip the download on your computer.
- Launch your WordPress site.
- Navigate to `Tools > Import` in the WordPress admin.
- Click on `WordPress` and install the [WordPress Importer](http://wordpress.org/extend/plugins/wordpress-importer/) plugin, if it's not already installed, and click `Activate Plugin & Run Importer` after the installation completes.
- Choose the `wptest.xml` file you extracted from the zip in Step 2 and click `Upload file and import`.
- On the next screen, *do not change or reassign anything about the authors* and make sure you check the `Download and import file attachments` box before you click `Submit`.
- Let the import process run until complete. *Do not close the browser tab / window or navigate away from page while importing.* You should see an `All done. Have fun!` message when the import is complete.
- Happy testing! See [Usage](#usage) section for more details.

### Installation via WP-CLI

1. Make sure you have [WP-CLI](http://wp-cli.org/) installed, if it's not already installed.
- Via the command line, execute the [`wptest-cli-install.sh`](wptest-cli-install.sh) script.
- Follow the prompts to install the WP Test data.
- Happy testing! See [Usage](#usage) section for more details.

## Usage

Once the WP Test data is [installed](#installation), using WP Test is as simple as navigating to posts, pages, assigning menus, etc. and looking for layout, overflow, alignment, and other style and structure issues.

The test data is [self documenting](#guided-help), as much as possible, to help you fix your issues.

## Contributing

The word "comprehensive" was purposely left off the project description. It's not. There will always be something new squarely scenario to test. That's where you come in. 

Let us know of a test we're not covering by [contacting us](http://wptest.io/contact/) or by adding an [issue](https://github.com/manovotny/wptest/issues). We'd love to incorporate it into the suite and help other developers squash the issue.


For more information on how to directly contribute to the project, please read the [`CONTRIBUTING.md`](CONTRIBUTING.md) file.

Let’s make WordPress testing easier and resilient together!

## Release Notes

What has been added, removed, or modified in each release is detailed in the [releases](https://github.com/manovotny/wptest/releases) section of the project on GitHub.

## License

WP Test is licensed under the [GPL](http://www.gnu.org/licenses/gpl-3.0.html).

A copy of the [`LICENSE`](LICENSE) is included in the root of the project.

## Credits

WP Test was created in March of 2013 by [Michael Novotny](http://manovotny.com) and has since included a number of great contributions.

The foundation of these tests are derived from [WordPress’ Theme Unit Test Codex data](http://codex.wordpress.org/Theme_Unit_Test#Test_Environment_Setup). And in the beauty of open source, many WP Test tests have been integrated back into the "official" WordPress Unit Test data, but not everything...and not what we consider to be the most useful test / corner cases.