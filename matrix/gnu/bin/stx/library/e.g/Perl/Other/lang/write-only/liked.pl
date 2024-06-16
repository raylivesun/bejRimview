#!/usr/bin/perl

# Like any language, Perl can be “write-only”—it’s possible to write programs that are
# impossible to read. But with proper care, you can avoid this common accusation. Yes,
# sometimes Perl looks like line noise to the uninitiated, but to the seasoned Perl pro-
# grammer, it looks like the notes of a grand symphony. If you follow the guidelines of
# this book, your programs should be easy to read and easy to maintain, and they prob-
# ably won’t win The Obfuscated Perl Contest.


use strict;
use warnings;

use Test::More tests => 1;

BEGIN { use_ok( 'Perl::ToPerl6::Transformer' ); }

sub test_perl {
    my ( $input, $output ) = @_;
    my $transformer = Perl::ToPerl6::Transformer->new();
    $transformer->transform( \$input );
    is( $input, $output );
}

