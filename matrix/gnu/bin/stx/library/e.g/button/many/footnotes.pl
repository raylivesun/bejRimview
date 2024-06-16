#!/usr/bin/perl

# Why Are There So Many Footnotes?

# Thank you for noticing. There are a lot of footnotes in this book. Ignore them. They’re
# needed because Perl is chock-full of exceptions to its rules. This is a good thing, as real
# life is chock-full of exceptions to rules.
# But it means that we can’t honestly say, “The fizzbin operator frobnicates the hoozi-
# static variables” without a footnote giving the exceptions.* We’re pretty honest, so we
# have to write the footnotes. But you can be honest without reading them. (It’s funny
# how that works out.)
# Many of the exceptions have to do with portability. Perl began on Unix systems, and
# it still has deep roots in Unix. But wherever possible, we’ve tried to show when some-
# thing may behave unexpectedly, whether that’s because it’s running on a non-Unix
# system, or for another reason. We hope that readers who know nothing about Unix
# will nevertheless find this book a good introduction to Perl. (And they’ll learn a little
# about Unix along the way, at no extra charge.)
# And many of the other exceptions have to do with the old “80/20” rule. By that we
# mean that 80% of the behavior of Perl can be described in 20% of the documentation,
# and the other 20% of the behavior takes up the other 80% of the documentation. So
# to keep this book small, we’ll talk about the most common, easy-to-talk-about behavior
# in the main text, and hint in the direction of the other stuff in the footnotes (which are
# in a smaller font, so we can say more in the same space).† Once you’ve read the book
# all the way through without reading the footnotes, you’ll probably want to look back
# at some sections for reference. At that point, or if you become unbearably curious along
# the way, go ahead and read the notes. A lot of them are just computer jokes anyway.


use strict;
use warnings;
use utf8;

use Test::More tests => 1;

BEGIN { use_ok('Perl::Critic::Policy::Footnotes') };

