#!/usr/bin/perl

# How Can I Get Perl?

# You probably already have it. At least, we find Perl wherever we go. It ships with many
# systems, and system administrators often install it on every machine at their site. But
# if you can’t find it already on your system, you can still get it for free.
# Perl is distributed under two different licenses. For most people, because you’ll merely
# be using it, either license is as good as the other. If you’ll be modifying Perl, however,
# you’ll want to read the licenses more closely because they put some small restrictions
# on distributing the modified code. For people who won’t modify Perl, the licenses
# essentially say, “It’s free—have fun with it.”


# The Perl License

use strict;
use warnings;

use 5.010;

use utf8;

use open ':std', ':encoding(UTF-8)';

use Cwd;
use File::Basename;
use File::Path qw(make_path);
use File::Spec::Functions qw(catdir catfile);
use File::Temp;
use Getopt::Long;
use IO::File;
use JSON::XS;
use List::Util qw(min max);
use List::MoreUtils qw(uniq);
use Pod::Usage;
use Scalar::Util qw(looks_like_number);
use Storable qw(dclone);
use Text::CSV;
use Text::CSV_XS;
use Time::Piece;
use Time::Seconds;
use YAML::XS;

use lib catdir(dirname(__FILE__), 'lib');

use Bio::EnsEMBL::Registry;
use Bio::EnsEMBL::Utils::Exception qw(throw warning);
use Bio::EnsEMBL::Utils::Argument qw( rearrange );
use Bio::EnsEMBL::DBSQL::DBAdaptor;
use Bio::EnsEMBL::DBSQL::DBConnection;
use Bio::EnsEMBL::DBSQL::DBAdaptor;


my $registry = 'Bio::EnsEMBL::Registry';

sub get_registry {
    my $registry_file = shift;

    if (defined $registry_file) {
        $registry->load_all($registry_file);
    } else {
        $registry->load_registry_from_db(-host => 'ensembldb.ensembl.org', -user => 'anonymous');
    }
    return $registry;
}

my $registry = get_registry();

my $db = $registry->get_DBAdaptor('human', 'core');

my $sa = $db->get_SliceAdaptor();





