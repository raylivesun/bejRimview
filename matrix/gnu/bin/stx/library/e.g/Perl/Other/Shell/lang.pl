#!/usr/bin/perl

# Once you become familiar with Perl, you may find yourself spending less time trying
# to get shell quoting (or C declarations) right, and more time surfing the Web because
# Perl is a great tool for leverage. Perl’s concise constructs allow you to create (with
# minimal fuss) some very cool one-up solutions or general tools. Also, you can drag
# those tools along to your next job because Perl is highly portable and readily available,
# so you’ll have even more time to surf.


use strict;
use warnings;

use Cwd;
use File::Basename;
use File::Copy;
use File::Find;
use File::Path;
use File::Spec;
use Getopt::Long;
use IO::File;
use IO::Handle;
use IO::Socket::INET;
use IO::Socket::SSL;
use JSON;
use LWP::UserAgent;
use Pod::Usage;
use Sys::Hostname;
use Sys::Syslog;
use Time::HiRes qw(gettimeofday tv_interval);

use lib dirname(__FILE__);

use lib File::Spec->catdir(dirname(__FILE__), 'lib');

use Catalyst::Runtime;
use Catalyst::ScriptRunner;
use CatalystX::GlobalContext;
use CatalystX::GlobalState;
use CatalystX::Usul::Constants;
use CatalystX::Usul::File;
use CatalystX::Usul::Functions;


my $VERSION = '0.01';

my $DEBUG = 0;

my $HELP = 0;

my $VERBOSE = 0;

my $VERBOSE_DEBUG = 0;

my $VERBOSE_ERROR = 0;

my $VERBOSE_INFO = 0;

my $VERBOSE_NOTICE = 0;

my $VERBOSE_WARNING = 0;

my $VERBOSE_VERBOSE = 0;

my $VERBOSE_VERBOSE_DEBUG = 0;

my $VERBOSE_VERBOSE_ERROR = 0;

my $VERBOSE_VERBOSE_INFO = 0;

my $VERBOSE_VERBOSE_NOTICE = 0;

my $VERBOSE_VERBOSE_WARNING = 0;

my $VERBOSE_VERBOSE_VERBOSE = 0;

sub usage {
    pod2usage({-exitval => 0, -verbose => 2});
}

GetOptions(
    'help|h' => \$HELP,
    'debug|d' => \$DEBUG,
    'verbose|v' => \$VERBOSE,
    'verbose-debug|vd' => \$VERBOSE_DEBUG,
    'verbose-error|ve' => \$VERBOSE_ERROR,
    'verbose-info|vi' => \$VERBOSE_INFO,
    'verbose-notice|vn' => \$VERBOSE_NOTICE,
    'verbose-warning|vw' => \$VERBOSE_WARNING,
    'verbose-verbose|vv' => \$VERBOSE_VERBOSE,
    'verbose-verbose-debug|vvd' => \$VERBOSE_VERBOSE_DEBUG,
    'verbose-verbose-error|vve' => \$VERBOSE_VERBOSE_ERROR,
    'verbose-verbose-info|vvi' => \$VERBOSE_VERBOSE_INFO,
    'verbose-verbose-notice|vvn' => \$VERBOSE_VERBOSE_NOTICE,
    'verbose-verbose-warning|vvw' => \$VERBOSE_VERBOSE_WARNING,
    'verbose-verbose-verbose|vvv' => \$VERBOSE_VERBOSE_VERBOSE,
);

if ($HELP) {
    usage();
}

if ($DEBUG) {
    $VERBOSE_DEBUG = 1;
}

if ($VERBOSE) {
    $VERBOSE_VERBOSE = 1;
}

if ($VERBOSE_DEBUG) {
    $VERBOSE_VERBOSE_DEBUG = 1;
    $VERBOSE_DEBUG = 1;
}

if ($VERBOSE_ERROR) {
    $VERBOSE_VERBOSE_ERROR = 1;
    $VERBOSE_ERROR = 1;
}

if ($VERBOSE_INFO) {
    $VERBOSE_VERBOSE_INFO = 1;
    $VERBOSE_INFO = 1;
}

if ($VERBOSE_NOTICE) {
    $VERBOSE_VERBOSE_NOTICE = 1;
    $VERBOSE_NOTICE = 1;
}

if ($VERBOSE_WARNING) {
    $VERBOSE_VERBOSE_WARNING = 1;
    $VERBOSE_WARNING = 1;
}

if ($VERBOSE_VERBOSE) {
    $VERBOSE_VERBOSE_VERBOSE = 1;
    $VERBOSE_VERBOSE = 1;
}

if ($VERBOSE_VERBOSE_DEBUG) {
    $VERBOSE_VERBOSE_VERBOSE_DEBUG = 1;
    $VERBOSE_VERBOSE_DEBUG = 1;
}


