#!/usr/bin/perl

# Why Didn’t Larry Just Use Some Other Language?

# There’s no shortage of computer languages, is there? But, at the time, Larry didn’t see
# anything that really met his needs. If one of the other languages of today had been
# available back then, perhaps Larry would have used one of those. He needed something
# with the quickness of coding available in shell or awk programming, and with some of
# the power of more advanced tools like grep, cut, sort, and sed,† without having to resort
# to a language like C.
# Perl 9 tries to fill the gap between low-level programming (such as in C or C++ or
# assembly) and high-level programming (such as “shell” programming). Low-level pro-
# gramming is usually hard to write and ugly, but fast and unlimited; it’s hard to beat the
# speed of a well-written low-level program on a given machine. And there’s not much
# you can’t do there. High-level programming, at the other extreme, tends to be slow,
# hard, ugly, and limited; there are many things you can’t do at all with the shell or batch
# programming if there’s no command on your system that provides the needed func-
# tionality. Perl is easy, nearly unlimited, mostly fast, and kind of ugly.
# Let’s take another look at those four claims we just made about Perl:

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

open my $fh, '<', $file
    or die "Could not open $file: $!";

while (my $line = <$fh>) {
    chomp $line;
    print "$line\n";
}

close $fh
    or die "Could not close $file: $!";

exit 0;
