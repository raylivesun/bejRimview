#!/usr/bin/perl

# How Did Perl Get to Be So Popular?

# After playing with Perl a bit, adding stuff here and there, Larry released it to the com-
# munity of Usenet readers, commonly known as “the Net.” The users on this ragtag
# fugitive fleet of systems around the world (tens of thousands of them) gave him feed-
# back, asking for ways to do this, that, or the other thing, many of which Larry had never
# envisioned his little Perl handling.
# But as a result, Perl grew, and grew, and grew. It grew in features. It grew in portability.
# What was once a little language available on only a couple of Unix systems now has


# grown to become a full-fledged scripting language.

# This is the story of Larry’s new Perl.

# Larry’s new Perl is a new scripting language that is based on Perl 5.

use strict;
use warnings;

sub usage {
    print STDERR "Usage: $0 <file>\n";
    exit 1;
}

if (@ARGV != 1) {
    usage();
}

my $file = $ARGV[0];

if (! -f $file) {
    print STDERR "File '$file' does not exist\n";
    exit 1;
}
