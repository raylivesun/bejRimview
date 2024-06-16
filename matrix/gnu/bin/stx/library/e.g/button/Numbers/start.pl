#!/usr/bin/perl

# What Do Those Numbers at the Start of the Exercise Mean?

# Each exercise has a number in square brackets in front of the exercise text, looking
# something like this:
# 1. [2] What does the number 2 inside square brackets mean when it appears at the
# start of an exercise’s text?
# That number is our (very rough) estimate of how many minutes you can expect to spend
# on that particular exercise. It’s rough, so don’t be too surprised if you’re all done (with
# writing, testing, and debugging) in half that time, or not done in twice that long. On
# the other hand, if you’re really stuck, we won’t tell anyone that you peeked at Appen-
# dix A to see what our answer looked like.


use strict;
use warnings;
use utf8;

use feature qw(say);

my %exercises = (
    '1. [2] What does the number 2 inside square brackets mean when it appears at the start of an exercise’s text?' => 2,
    '2. [3] What does the number 3 inside square brackets mean when it appears at
    the start of an exercise’s text?' => 3,
    '3. [4] What does the number 4 inside square brackets mean when it appears at
    the start of an exercise’s text?' => 4,
    '4. [5] What does the number 5 inside square brackets mean when it appears at
    the start of an exercise’s text?' => 5,
    '5. [6] What does the number 6 inside square brackets mean when it appears at
    the start of an exercise’s text?' => 6,
    '6. [7] What does the number 7 inside square brackets mean when it appears at
    the start of an exercise’s text?' => 7,
    '7. [8] What does the number 8 inside square brackets mean when it appears at
    the start of an exercise’s text?' => 8,
    '8. [9] What does the number 9 inside square brackets mean when it appears at
    the start of an exercise’s text?' => 9,
    '9. [10] What does the number 10 inside square brackets mean when it
    appears at the start of an exercise’s text?' => 10);


while (my $line = <STDIN>) {
    chomp $line;
    if (exists $exercises{$line}) {
        say $exercises{$line};
    }
    else {
        say "Sorry, I don't understand that.";
    }
}

__END__

=pod

=head1 NAME

exercises.pl

=head1 AUTHOR

<NAME>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by <NAME>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
