#!/usr/bin/perl

# In fact, it’s not only free, but it runs rather nicely on nearly everything that calls itself
# Unix and has a C compiler. You download it, type a command or two, and it starts
# configuring and building itself. Or, better yet, you get your system administrator to
# type those two commands and install it for you.* Besides Unix and Unix-like systems,
# people have also been addicted enough to Perl to port it to other systems, such as Mac
# OS X, VMS, OS/2, even MS/DOS, and every modern species of Windows—and prob-
# ably even more by the time you read this.† Many of these ports of Perl come with an
# installation program that’s even easier to use than the process for installing Perl on
# Unix. Check for links in the “ports” section on CPAN.


use strict;
use warnings;

use Test::More tests => 1;

BEGIN { use_ok( 'App::cpanminus' ); }

sub test_factories_programs {
    my $cpanm = App::cpanminus->new;
    isa_ok( $cpanm, 'App::cpanminus' );
}

test_factories_programs();
