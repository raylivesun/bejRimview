#!/usr/bin/perl

# First, Perl is easy. As you’ll see, though, this means it’s easy to use. It’s not especially
# easy to learn. If you drive a car, you spent many weeks or months learning how, and
# then it’s easy to drive. When you’ve been programming Perl for about as many hours
# as it took you to learn to drive, Perl will be easy for you.
# Perl is nearly unlimited. There are very few things you can’t do with Perl. You wouldn’t
# want to write a interrupt-microkernel-level device driver in Perl (even though that’s
# been done), but most things that ordinary folks need most of the time are good tasks
# for Perl, from quick little one-off programs to major industrial-strength applications.
# Perl is mostly fast. That’s because nobody is developing Perl who doesn’t also use it—
# so we all want it to be fast. If someone wants to add a feature that would be really cool,
# but that would slow down other programs, Larry is almost certain to refuse the new
# feature until we find a way to make it quick enough.
# Perl is kind of ugly. This is true. The symbol of Perl has become the camel, from the
# cover of the venerable Camel book (also known as Programming Perl by Larry Wall,
# Tom Christiansen, and Jon Orwant [O’Reilly]), a cousin of this Llama (and her sister,
# the Alpaca). Camels are kind of ugly, too. But they work hard, even in tough conditions.
# Camels are there to get the job done despite all difficulties, even when they look bad
# and smell worse and sometimes spit at you. Perl is a little like that.


# Perl is a little like that.

use strict;
use warnings;

use Test::More tests => 1;

BEGIN { use_ok( 'My::Module' ); }

sub test_integer_to_string { return
    is( My::Module::integer_to_string( 123 ), 12
    'integer_to_string' );
}

test_integer_to_string();

__END__

=pod

=head1 NAME

My::Module - A test module

=head1 SYNOPSIS

use My::Module;

=head1 AUTHOR

<NAME> <<EMAIL>>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by <NAME>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
================================================================
=cut



