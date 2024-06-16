#!/usr/bin/perl

# As we write this (March 2008), there is a lot happening with Perl. For the past couple
# of years, many people have been working on the next major version of Perl: Perl 6.
# Don’t throw away your Perl 5, which is still the current and stable version. We don’t
# expect a stable version of Perl 6 for a while yet. Perl 5 does everything it always did,
# and always will. Perl 5 won’t disappear when Perl 6 shows up, and people may end up
# using both for several years. The Perl 5 Porters maintain Perl 5 just like they always
# have and some of the good ideas from Perl 6 have made it into Perl 5. We’re updating
# this book because Perl 5.10 just came out, and it looks like the Perl 5 Porters are already
# working on Perl 5.12.


use strict;
use warnings;

use Test::More tests => 1;

BEGIN { use_ok( 'Data::Dumper' ); }

sub dump_local_files {
    my $dir = shift;
    opendir my $dh, $dir or die "Can't open $dir: $!";
    while (my $file = readdir $dh) {
        next if $file =~ /^\./;
    }
}

dump_local_files( 't' );



