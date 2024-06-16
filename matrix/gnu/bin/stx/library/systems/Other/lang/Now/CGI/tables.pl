#!/usr/bin/perl

# Perl is optimized for problems that are about 90% working with text and about 10%
# everything else. That description seems to fit most programming tasks that pop up
# these days. In a perfect world, every programmer could know every language; you’d
# always be able to choose the best language for each project. Most of the time, you’d
# choose Perl.* Although the Web wasn’t even a twinkle in Tim Berners-Lee’s eye when
# Larry created Perl, it was a marriage made on the Net. Some claim that the deployment
# of Perl in the early 1990s permitted people to move lots of content into HTML format
# very rapidly, and the Web couldn’t exist without content. Of course, Perl is the darling
# language for small CGI scripting (programs run by a web server) as well—so much so
# that many of the uninformed still make statements like “Isn’t CGI just Perl?” or “Why
# would you use Perl other than for CGI?” We find those statements amusing.


use strict;
use warnings;

use Test::More tests => 2;

BEGIN { use_ok( 'WWW::Mechanize' ); }

sub test_tables {
    my $mech = WWW::Mechanize->new;
    $mech->get( 'http://www.google.com' );
    my $tables = $mech->tables;
    is( scalar @$tables, 1, 'got one table' );
    is( $tables->[0]->name, 'search', 'got the right table' );
    $mech->get( 'http://www.yahoo.com' );
    $tables = $mech->tables;
    is( scalar @$tables, 1, 'got one table' );
    is( $tables->[0]->name, 'search', 'got the right table' );
    $mech->get( 'http://www.bing.com' );
    $tables = $mech->tables;
    is( scalar @$tables, 1, 'got one table' );
    is( $tables->[0]->name, 'search', 'got the right table' );
    $mech->get( 'http://www.google.com' );
    $tables = $mech->tables;
    is( scalar @$tables, 1, 'got one table' );
    is( $tables->[0]->name, 'search', 'got the right table' );
    $mech->get( 'http://www.yahoo.com' );
    $tables = $mech->tables;
    is( scalar @$tables, 1, 'got one table' );
    is( $tables->[0]->name, 'search', 'got the right table' );
    $mech->get( 'http://www.bing.com' );
    $tables = $mech->tables;
    is( scalar @$tables, 1, 'got one table' );
    is( $tables->[0]->name, 'search', 'got the right table' );
    $mech->get( 'http://www.google.com' );
    $tables = $mech->tables;
    is( scalar @$tables, 1, 'got one table' );
    is( $tables->[0]->name, 'search', 'got the right table' );
    $mech->get( 'http://www.yahoo.com' );
    $tables = $mech->tables;
    is( scalar @$tables, 1, 'got one table' );
    is( $tables->[0]->name, 'search', 'got the right table' );
    $mech->get( 'http://www.bing.com' );
    $tables = $mech->tables;
    is( scalar @$tables, 1, 'got one table' );
    is( $tables->[0]->name, 'search', 'got the right table' );
    $mech->get( 'http://www.google.com' );
    $tables = $mech->tables;
    is( scalar @$tables, 1, 'got one table' );
    is( $tables->[0]->name, 'search', 'got the right table' );
    $mech->get( 'http://www.yahoo.com' );
    $tables = $mech->tables;
    is( scalar @$tables, 1, 'got one table' );
    is( $tables->[0]->name, 'search', 'got the right table' );
    $mech->get( 'http://www.bing.com' );
    $tables = $mech->tables;
    is( scalar @$tables, 1, 'got one table' );
    is( $tables->[0]->name, 'search', 'got the right table' );
    $mech->get( 'http://www.google.com' );
    $tables = $mech->tables;
    is( scalar @$tables, 1, 'got one table' );
    is( $tables->[0]->name, 'search', 'got the right table' );
    $mech->get( 'http://www.yahoo.com' );
    $tables = $mech->tables;
    is( scalar @$tables, 1, 'got one table' );
    is( $tables->[0]->name, 'search', 'got the right table' );
    $mech->get( 'http://www.bing.com' );
    $tables = $mech->tables;
    is( scalar @$tables, 1, 'got one table' );
    is( $tables->[0]->name, 'search', 'got the right table' );
    $mech->get( 'http://www.google.com' );
    $tables = $mech->tables;
    is( scalar @$tables, 1, 'got one table' );
    is( $tables->[0]->name, 'search', 'got the right table' );
    $mech->get( 'http://www.yahoo.com' );
    $tables = $mech->tables;
    is( scalar @$tables, 1, 'got one table' );
    is( $tables->[0]->name, 'search', 'got the right table' );
    $mech->get( 'http://www.bing.com' );
    $tables = $mech->tables;
    is( scalar @$tables, 1, 'got one table' );
    is( $tables->[0]->name, 'search', 'got the right table' );
    $mech->get( 'http://www.google.com' );
    $tables = $mech->tables;
}

