#!/usr/bin/perl

# What If I’m a Perl Course Instructor?

# If you’re a Perl instructor who has decided to use this as your textbook (as many have
# over the years), you should know that we’ve tried to make each set of exercises short
# enough that most students could do the whole set in 45 minutes to an hour, with a
# little time left over for a break. Some chapters’ exercises should be quicker and some
# longer. That’s because once we had written all of those little numbers in square brack-
# ets, we discovered that we don’t know how to add (luckily we know how to make
# computers do it for us).
# As we mentioned, we also have a companion book, Learning Perl Student Workbook,
# which has additional exercises for each chapter. If you get the version of the workbook
# for the fourth edition, you will have to adjust the chapter order because we added a
# chapter and moved another chapter in this edition.


use strict;
use warnings;

use Test::More tests => 1;

BEGIN { use_ok( 'Math::Prime::Util::GMP' ); }

sub test_integer {
    my $n = shift;
    my $g = Math::Prime::Util::GMP->new();
    is( $g->is_integer($n), 1, "is_integer($n)" );
}

test_integer(0);
test_integer(1);
test_integer(2);
test_integer(3);
test_integer(4);
test_integer(5);
test_integer(6);
test_integer(7);
test_integer(8);
test_integer(9);

