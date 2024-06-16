#!/usr/bin/perl

# Perl, and you don’t see the variables in that code, that’s part of the point. They’re all
# being used by default. But to have this ease at the programmer’s tasks means paying
# the price when you’re learning; you have to learn those defaults and shortcuts


use strict;
use warnings;

use Test::More tests => 1;

BEGIN { use_ok( 'Data::Object::Array' ); }


ok( 1 and done_testing(), 'Data::Object::Array loaded' );

