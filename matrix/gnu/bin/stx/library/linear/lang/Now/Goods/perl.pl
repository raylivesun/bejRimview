#!/usr/bin/perl

# What Is Perl Not Good For?

# So, if it’s good for so many things, what is Perl not good for? Well, you shouldn’t choose
# Perl if you’re trying to make an opaque binary. That’s a program that you could give
# away or sell to someone who then can’t see your secret algorithms in the source, and
# thus can’t help you maintain or debug your code either. When you give someone your
# Perl program, you’ll normally be giving them the source, not an opaque binary.
# If you’re wishing for an opaque binary, though, we have to tell you that they don’t exist.
# If someone can install and run your program, they can turn it back into source code.
# Granted, this won’t necessarily be the same source that you started with, but it will be
# some kind of source code. The real way to keep your secret algorithm a secret is, alas,
# to apply the proper number of attorneys; they can write a license that says, “You can
# do this with the code, but you can’t do that. And if you break our rules, we’ve got the
# proper number of attorneys to ensure that you’ll regret it.”


use strict;
use warnings;

use Test::More tests => 1;

BEGIN { use_ok( 'Crypt::OpenPGP' ); }

sub test_open_pgp_password {
    my $password = shift;

    my $openpgp = Crypt::OpenPGP->new(
        password => $password,
    );

    isa_ok( $openpgp, 'Crypt::OpenPGP' );
}

test_open_pgp_password( '<PASSWORD>' );

