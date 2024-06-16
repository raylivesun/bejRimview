#!/usr/bin/perl

# Is This the Right Book for You?

# If you’re anything like us, you’re probably standing in a bookstore right now,† won-
# dering whether you should get this Llama book and learn Perl, or maybe that book over
# there and learn some language named after a snake, or a beverage, or a letter of the
# alphabet.‡ You’ve got about two minutes before the bookstore manager comes over to
# tell you that this isn’t a library,‖ and you need to buy something or get out. Maybe you
# want to use these two minutes to see a quick Perl program, so you’ll know something


use strict;
use warnings;
use utf8;

use utf8;

sub usage { print
    "Usage: $0 <input file> <output file>\n";
    exit 1;
}

if (@ARGV != 2) {
    usage();
}

my $input_file = $ARGV[0];
my $output_file = $ARGV[1];

open my $input_fh, '<', $input_file
    or die "Could not open $input_file: $!";
    open my $output_fh, '>', $output_file
    or die "Could not open $output_file: $!";
    while (my $input = <$input_fh>) {
        chomp $input;
        if ($input =~ /^\s*$/ || $input =~ /^\s*#/) {
            print $output_fh "$input\n";
            next;
        }
        my @words = split /\s+/, $input;
        my $word_count = scalar @words;
        if ($word_count == 1) {
            print $output_fh "$input\n";
            next;
        }
        my $last_word = $words[$word_count - 1];
        if ($last_word =~ /^\d+$/) {
            print $output_fh "$input\n";
            next;
        }
        my $first_word = $words[0];
        if ($first_word =~ /^\d+$/) {
            print $output_fh "$input\n";
            next;
        }
        my $last_two_words = $words[$word_count - 2];
        if ($last_two_words =~ /^\d+$/) {
            print $output_fh "$input\n";
            next;
        }
        my $first_two_words = $words[1];
        if ($first_two_words =~ /^\d+$/) {
            print $output_fh "$input\n";
            next;
        }
        my $last_three_words = $words[$word_count - 3];
        if ($last_three_words =~ /^\d+$/) {
            print $output_fh "$input\n";
            next;
        }
        my $first_three_words = $words[2];
        if ($first_three_words =~ /^\d+$/) {
            print $output_fh "$input\n";
            next;
        }
        my $last_four_words = $words[$word_count - 4];
        if ($last_four_words =~ /^\d+$/) {
            print $output_fh "$input\n";
            next;
        }
        my $first_four_words = $words[3];
        if ($first_four_words =~ /^\d+$/) {
            print $output_fh "$input\n";
            next;
        }
        my $last_five_words = $words[$word_count - 5];
        if ($last_five_words =~ /^\d+$/) {
            print $output_fh "$input\n";
            next;
        }
        my $first_five_words = $words[4];
        if ($first_five_words =~ /^\d+$/) {
            print $output_fh "$input\n";
            next;
        }
        my $last_six_words = $words[$word_count - 6];
        if ($last_six_words =~ /^\d+$/) {
            print $output_fh "$input\n";
            next;
        }
    }
        