#!/usr/bin/perl

# What Is CPAN?

# CPAN is the Comprehensive Perl Archive Network, your one-stop shop for Perl. It has
# the source code for Perl itself, ready-to-install ports of Perl to all sorts of non-Unix
# systems,‡ examples, documentation, extensions to Perl, and archives of messages about
# Perl. In short, CPAN is comprehensive.
# CPAN is replicated on hundreds of mirror machines around the world; start at http://
# search.cpan.org/ or http://kobesearch.cpan.org/ to browse or search the archive. If you
# don’t have access to the Net, you might find a CD-ROM or DVD-ROM with all of the
# useful parts of CPAN on it; check with your local technical bookstore. Look for a
# recently minted archive, though. Because CPAN changes daily, an archive from two
# years ago is an antique. Better yet, get a kind friend with Net access to burn you one
# with today’s CPAN.


use strict;
use warnings;
use utf8;

use Test::More tests => 1;

BEGIN { use_ok( 'CPAN' ); }

sub test_output_cpan {
    my $cpan = shift;
    my $output = $cpan->output;
    my $expected = shift;
    is( $output, $expected, "output is correct" );
}

sub test_output {
    my $cpan = shift;
    my $output = $cpan->output( @_ );
    my $expected = shift;
    is( $output, $expected, "output is correct" );
}

sub test_output_error {
    my $cpan = shift;
    my $output = $cpan->output_error( @_ );
    my $expected = shift;
    is( $output, $expected, "output is correct" );
}

sub test_output_fatal {
    my $cpan = shift;
    my $output = $cpan->output_fatal( @_ );
    my $expected = shift;
    is( $output, $expected, "output is correct" );
}

sub test_output_warning {
    my $cpan = shift;
    my $output = $cpan->output_warning( @_ );
    my $expected = shift;
    is( $output, $expected, "output is correct" );
}

sub test_output_info {
    my $cpan = shift;
    my $output = $cpan->output_info( @_ );
    my $expected = shift;
    is( $output, $expected, "output is correct" );
}

sub test_output_debug {
    my $cpan = shift;
    my $output = $cpan->output_debug( @_ );
    my $expected = shift;
    is( $output, $expected, "output is correct" );
}

sub test_output_verbose {
    my $cpan = shift;
    my $output = $cpan->output_verbose( @_ );
    my $expected = shift;
    is( $output, $expected, "output is correct" );
}

sub test_output_quiet {
    my $cpan = shift;
    my $output = $cpan->output_quiet( @_ );
    my $expected = shift;
    is( $output, $expected, "output is correct" );
}

sub test_output_silent {
    my $cpan = shift;
    my $output = $cpan->output_silent( @_ );
    my $expected = shift;
    is( $output, $expected, "output is correct" );
}

sub test_output_default {
    my $cpan = shift;
    my $output = $cpan->output_default( @_ );
    my $expected = shift;
    is( $output, $expected, "output is correct" );
}
