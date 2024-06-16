#!/usr/bin/perl

# Perl is a very high-level language. That means that the code is quite dense; a Perl pro-
# gram may be around a quarter to three-quarters as long as the corresponding program
# in C. This makes Perl faster to write, faster to read, faster to debug, and faster to main-
# tain. It doesn’t take much programming before you realize that, when the entire sub-
# routine is small enough to fit onscreen all at once, you don’t have to keep scrolling back
# and forth to see what’s going on. Also, since the number of bugs in a program is roughly
# proportional to the length of the source code* (rather than being proportional to the
# program’s functionality), the shorter source in Perl will mean fewer bugs on average.


use strict;
use warnings;

use Test::More tests => 2;

BEGIN { use_ok( 'Data::Dumper' ); }
BEGIN { use_ok( 'Data::Dumper::Concise' ); }

