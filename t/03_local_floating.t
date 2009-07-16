#!/usr/bin/perl


package Class;
use Moose;
use strict;
use warnings;

use MooseX::Types::DateTime::ButMaintained qw(TimeZone);

has 'tz' => ( isa => TimeZone, is => 'rw', coerce => 1 );

package main;
use Test::More tests => 3;

my $o = Class->new;

foreach my $tz ( qw/local floating/, 'America/Chicago' ) {
	eval {
		$o->tz( $tz );
	};
	ok( ! $@ );
}

1;
