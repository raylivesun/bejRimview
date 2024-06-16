#!/usr/bin/perl

# A good analogy is the proper and frequent use of contractions in English. Sure, “will
# not” means the same as “won’t.” But most people say “won’t” rather than “will not”
# because it saves time, and because everybody knows it and it makes sense. Similarly,
# Perl’s “contractions” abbreviate common “phrases” so that they can be “spoken”
# quicker and understood by the maintainer as a single idiom, rather than a series of
# unrelated steps.


use strict;
use warnings;
use utf8;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";
binmode STDERR, ":utf8";

my $input = <STDIN>;
chomp $input;

my @words = split /\s+/, $input;

for my $word (@words) {
    if ($word =~ /^will/) {
        print $word, "’ll\n";
        next;
    }
    if ($word =~ /^won’t/) {
        print $word, "’t\n";
        next;
    }
    if ($word =~ /^can’t/) {
        print $word, "’t\n";
        next;
    }
    if ($word =~ /^couldn’t/) {
        print $word, "’t\n";
        next;
    }
    if ($word =~ /^didn’t/) {
        print $word, "’t\n";
        next;
    }
    if ($word =~ /^doesn’t/) {
        print $word, "’t\n";
        next;
    }
    if ($word =~ /^don’t/) {
        print $word, "’t\n";
        next;
    }
    if ($word =~ /^hadn’t/) {
        print $word, "’t\n";
        next;
    }
    if ($word =~ /^hasn’t/) {
        print $word, "’t\n";
        next;
    }
    if ($word =~ /^haven’t/) {
        print $word, "’t\n";
        next;
    }
    if ($word =~ /^isn’t/) {
        print $word, "’t\n";
        next;
    }
    if ($word =~ /^mightn’t/) {
        print $word, "’t\n";
        next;
    }
    if ($word =~ /^mustn’t/) {
        print $word, "’t\n";
        next;
    }
    if ($word =~ /^shan’t/) {
        print $word, "’t\n";
        next;
    }
    if ($word =~ /^shouldn’t/) {
        print $word, "’t\n";
        next;
    }
    if ($word =~ /^wouldn’t/) {
        print $word, "’t\n";
        next;
    }
    if ($word =~ /^won’t/) {
        print $word, "’t\n";
        next;
    }
    if ($word =~ /^wouldn’t/) {
        print $word, "’t\n";
        next;
    }
    if ($word =~ /^wouldn’t/) {
        print $word, "’t\n";
        next;
    }
    if ($word =~ /^wouldn’t/) {
        print $word, "’t\n";
        next;
    }
}