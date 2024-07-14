#!/bin/bash

# Define the name of the AI agent: article_extractor

# Your article content
article_content="
PHP.Watch LogoPHP.Watch
Articles
PHP Versions
News
RFCs
How to install/upgrade PHP 8.2 on Debian and Ubuntu systems
Published On31 Oct 2022

How to install PHP 8.2 on Debian, Ubuntu, and other Ubuntu-based systems
PHP 8.2 brings major new features such as Read-only classes, New random extension, sensitive parameter redaction as well as language streamlining changes including deprecation of dynamic properties and string interpolation related deprecations.

Currently, PHP 8.2 packages are not offered in the default software repositories of Debian or Ubuntu, but PHP 8.2 packages are available from the repository maintained by Ondřej Surý. Ondrej's repository is the main and most up to date repository offering PHP packages and PECL extensions to Debian and Ubuntu based operating systems, and are used for all PHP.Watch guides on installing PHP on these systems.
What's New and Changed in PHP 8.2

PHP 8.2 brings a healthy list of new features for security and performance, and a few deprecations that may emit additional warnings on existing legacy systems because it deprecates dynamic properties, along with a few other deprecations.

For a full list of what's new and changed in PHP 8.2, see PHP 8.2: What's New and Changed
Notable Extension and INI changes

PHP 8.2 does not include any notable changes that should affect the installation or upgrade process. PHP 8.2 does in fact add a new extension called random, but this extension is always a bundled extension and PHP cannot be compiled without it.

One notable change in PHP's INI settings and files is that PHP 8.2 emits a warning upon ill-formatted INI settings that were silenced in old PHP versions. See PHP 8.2: INI Parsing warnings for more information.

    Heads up: Potentially destructive actions ahead
    The following actions are executed as sudo, and requires that level of permissions to continue. The usual warnings when making any system-wide changes apply here as well. Make sure to backup the system and check the backups before continuing.

Quick-Start

Below the command-line commands to install/upgrade to PHP 8.2, for detailed steps, go to Detailed Installation/Upgrade guide
Ubuntu

sudo dpkg -l | grep php | tee packages.txt
sudo add-apt-repository ppa:ondrej/php # Press enter when prompted.
sudo apt update
sudo apt install php8.2 php8.2-cli php-8.2{bz2,curl,mbstring,intl}

sudo apt install php8.2-fpm
# OR
# sudo apt install libapache2-mod-php8.2

sudo a2enconf php8.2-fpm

# When upgrading from older PHP version:
sudo a2disconf php8.1-fpm

## Remove old packages
sudo apt purge php8.1*

Debian

sudo dpkg -l | grep php | tee packages.txt

sudo apt install apt-transport-https lsb-release ca-certificates wget -y
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg 
sudo sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
sudo apt update

# Expand the curly braces with all extensions necessary.
sudo apt install php8.2 php8.2-cli php8.2-{bz2,curl,mbstring,intl}

sudo apt install php8.2-fpm
# OR
# sudo apt install libapache2-mod-php8.2

sudo a2enconf php8.2-fpm

# When upgrading from older PHP version:
sudo a2disconf php8.1-fpm

## Remove old packages
sudo apt purge php8.1*

Detailed Guide
1. List and store the list of PHP extensions

The following command lists all PHP-related packages that exist on the current system, and saves them to a text file named packages.txt. This helps to reconstruct the same list of packages on PHP 8.2.

On a fresh installation, this step is not necessary.

dpkg -l | grep php | tee packages.txt

2. Add ondrej/php PPA as a software repository.

The repositories maintained by Ondřej Surý contain the main PHP packages, and are kept updated.

After this repository is added to the system's list of software sources, the initial installation and updates can be done with the standard apt commands.

Ubuntu LTS Versions

sudo add-apt-repository ppa:ondrej/php # Press enter when prompted.
sudo apt update

Debian

sudo apt install apt-transport-https lsb-release ca-certificates 
software-properties-common
sudo add-apt-repository ppa:ondrej/php # Press enter when prompted.
sudo apt update

3. Install PHP 8.2 and extensions

All PHP 8.2 packages available in the repository added in step #2 follow php8.2- naming pattern. Bundled extensions in PHP, such as json, ctype, date, random, etc do not need to be installed manually.

The php8.2-common package includes several common PHP packages. It is possible to selectively disable unnecessary extensions later.

sudo apt install php8.2 php8.2-cli php8.2-{curl,bz2,mbstring,intl}

Expand the curly braces above to include all extensions necessary on the new system. When upgrading an existing PHP setup, the packages.txt file created in step #1 should list all current PHP packages.
4. Install and enable server APIs

On a system that a web server integrates with PHP, install the additional Server API packages. The following are some examples on most popular combinations:

Apache web server with PHP-FPM

sudo apt install php8.2-fpm
sudo a2enconf php8.2-fpm
sudo a2disconf php8.1-fpm # When upgrading from an older PHP version
sudo service apache2 restart

Apache web server with PHP as an Apache module
Installing PHP as an Apache module is not recommended, unless it's required for an edge use case.

sudo apt install libapache2-mod-php8.2
