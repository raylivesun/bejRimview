#!/usr/bin/perl

# What’s Perl Really Good For?

# Perl is good for quick-and-dirty programs that you whip up in three minutes. Perl is
# also good for long-and-extensive programs that will take a dozen programmers three
# years to finish. Of course, you’ll probably find yourself writing many programs that
# take you less than an hour to complete, from the initial plan to the fully tested code.

use strict;
use warnings;

use Test::More tests => 1;

BEGIN { use_ok( 'Perl::Really::Good::For' ) }

sub test_perl {
    my $code = shift;
    eval $code;
    if ($@) {
        diag $@;
    }
}

test_perl(<<'PERL');
use strict;
use warnings;

use Perl::Really::Good::For;

sub test_perl {
    my $code = shift;
    eval $code;
    if ($@) {
        diag $@;
    }
}
PERL


