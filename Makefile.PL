use inc::Module::Install;

name     'MooseX-Types-DateTime-ButMaintained';
all_from 'lib/MooseX/Types/DateTime/ButMaintained.pm';
author   'Evan Carroll <me@evancarroll.com>';
license  'perl';

requires 'Moose'              => '0.41'; # class_type
requires 'MooseX::Types'      => '0.04';
requires 'namespace::clean'   => '0.08';

# Datetime stuff
requires 'DateTime'           => '0.4302';
requires 'DateTime::Locale'   => '0.4001';
requires 'DateTime::TimeZone' => '0.7701';

test_requires 'Test::use::ok'    => '0.02';
test_requires 'Test::Exception'  => '0.27';
test_requires 'Test::More';

auto_install;

WriteAll;
