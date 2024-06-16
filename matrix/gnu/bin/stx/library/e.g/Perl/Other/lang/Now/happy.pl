#!/usr/bin/perl

# What’s Happening with Perl Now?

# Larry Wall doesn’t write the code these days, but he still guides the development and
# makes the big decisions. Perl is mostly maintained by a hardy group of people called
# the Perl 5 Porters. You can subscribe to their mailing list at perl5-porters@perl.org to
# follow their work and discussions.


use strict;
use warnings;

use Test::More tests => 1;


BEGIN { use_ok( 'LarryWall' ); }

sub test_integer_to_wall {
    my $integer = shift;
    my $wall    = LarryWall->new( $integer );
    is( $wall->wall, $integer );
}

test_integer_to_wall( 0 );
test_integer_to_wall( 1 );
test_integer_to_wall( 2 );
test_integer_to_wall( 3 );


