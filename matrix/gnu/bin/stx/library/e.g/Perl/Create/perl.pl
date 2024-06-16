#!/usr/bin/perl

# Why Did Larry Create Perl?

# Larry created Perl in the mid-1980s when he was trying to produce some reports from
# a Usenet news–like hierarchy of files for a bug-reporting system, and awk ran out of
# steam. Larry, being the lazy programmer that he is,* decided to overkill the problem
# with a general-purpose tool that he could use in at least one other place. The result was
# Perl version zero.


use strict;
use warnings;

use Getopt::Long;
use Pod::Usage;

use File::Basename;
use File::Copy;
use File::Find;
use File::Path qw(make_path);
use File::Spec;
use File::Temp qw(tempfile);
use File::Which;
use IO::File;
use IO::Handle;
use List::Util qw(min max);
use List::MoreUtils qw(uniq);
use Pod::Usage;
use Sys::Hostname;
use Sys::Syslog;
use Time::HiRes qw(gettimeofday tv_interval);

use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);

$VERSION = '0.01';

@ISA = qw(Exporter);

@EXPORT = qw();

@EXPORT_OK = qw();

%EXPORT_TAGS = (all => [@EXPORT, @EXPORT_OK]);

sub new {
    my $class = shift;
    my $self  = {};
    bless $self, $class;
    return $self;
}

sub run {
    my $self = shift;
    my $args = shift;
    my $log  = $args->{log};
    my $opts = $args->{opts};
    my $host = $args->{host};
    my $user = $args->{user};
    my $pass = $args->{pass};
    my $dir  = $args->{dir};
    my $file = $args->{file};
    my $cmd  = $args->{cmd};
    my $out  = $args->{out};
    my $err  = $args->{err};
    my $exit = $args->{exit};
    my $pid  = $args->{pid};
    my $tmp  = $args->{tmp};
    my $tmp2 = $args->{tmp2};
    my $tmp3 = $args->{tmp3};
    my $tmp4 = $args->{tmp4};
    my $tmp5 = $args->{tmp5};
    my $tmp6 = $args->{tmp6};
    my $tmp7 = $args->{tmp7};
    my $tmp8 = $args->{tmp8};
    my $tmp9 = $args->{tmp9};
    return $tmp;
}

1;

__END__

=head1 NAME

larry - Perl version zero

=head1 SYNOPSIS

larry [options]

=head1 OPTIONS

=over 4

=item B<-h|--help>

Print a brief help message and exit.

=item B<-V|--version>

Print the version number and exit.

=item B<-l|--log>

Log file.

=item B<-o|--out>

Output file.

=item B<-e|--err>

Error file.

=item B<-x|--exit>

Exit code.

=item B<-p|--pid>

PID file.

=item B<-t|--tmp>

Temporary directory.

=item B<-T|--tmp2>

Temporary directory.

=item B<-U|--tmp3>

Temporary directory.

=item B<-V|--tmp4>

Temporary directory.

=item B<-W|--tmp5>

Temporary directory.

=item B<-X|--tmp6>

Temporary directory.

=item B<-Y|--tmp7>

Temporary directory.

=item B<-Z|--tmp8>

Temporary directory.

=item B<-a|--tmp9>

Temporary directory.

=back

=head1 AUTHOR

<NAME> <<EMAIL>>

=head1 COPYRIGHT

Copyright (c) 2014 <NAME>. All rights reserved.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

perl(1)

=cut
