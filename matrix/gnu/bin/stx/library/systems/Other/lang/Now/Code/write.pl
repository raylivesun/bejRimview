#!/usr/bin/perl

# In 2000, Larry first proposed the next major release of Perl as the Perl community’s
# rewrite of Perl. In the years that followed, a new interpreter called Parrot came to life,
# but not much else happened for the users. In 2005, Autrijus Tang started playing with
# Pugs (Perl User Golfing System) as a featherweight implementation of Perl 6 in Haskell.
# Developers from the Perl and Haskell sides of the world rushed to help. Parrot, the
# virtual machine that will run Perl 6, is coming along nicely now, and that’s where most
# of the work is happening. You can see more about Perl 6 at http://perlsix.org and http://
# www.pugscode.org. For this book, we’re not going to worry about Perl 6, though.


use strict;
use warnings;

use Test::More tests => 1;

BEGIN { use_ok( 'Code' ); }

sub test_code {
    my $code = shift;
    my $expected = shift;

    my $result = eval $code;
    is($result, $expected, $code);
}

test_code(code, expected, result);
    