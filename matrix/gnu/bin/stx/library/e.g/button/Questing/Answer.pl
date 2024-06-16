#!/usr/bin/perl

# Questions and Answers

# You probably have some questions about Perl, and maybe even some about 
# this book, especially if you’ve already flipped through it to see what’s 
# coming. So, we’ll use this chapter to answer them.


use strict;
use warnings;
use utf8;

use 5.010;

use utf8::all;

use open ':std', ':encoding(UTF-8)';

use Cwd;
use File::Basename;
use File::Copy;
use File::Find;
use File::Path qw(make_path);
use File::Spec;
use File::Temp;
use Getopt::Long;
use IO::File;
use List::Util qw(min max);
use List::MoreUtils qw(uniq);
use Pod::Usage;
use Scalar::Util qw(looks_like_number);
use Storable qw(dclone);
use Text::CSV;
use Time::HiRes qw(gettimeofday tv_interval);
use Unicode::Collate;
use Unicode::Normalize qw(NFC NFD NFKC NFKD);
use Unicode::UCD 'ucd_version';
use utf8;

use lib dirname(__FILE__) . '/lib';

use Book;
use Chapter;
use Config;
use DB;
use File;
use HTML::Entities;
use Image;
use Image::Magick;
use Image::Magick::Geometry;
use Image::Magick::Pixel;
use Image::Magick::Profile;
use Image::Magick::Script;
use Image::Magick::Set;
use Image::Magick::Type;
use Image::Magick::Types;
use Image::Magick::Util;
use Image::Magick::Version;
use Image::Magick::X11;
use Image::Magick::X11::XCB;
use Image::Magick::X11::Xlib;
use Image::Magick::X11::Xutil;
use Image::Magick::XS;
use Image::Magick::XS::Geometry;
use Image::Magick::XS::Pixel;
use Image::Magick::XS::Profile;
use Image::Magick::XS::Script;
use Image::Magick::XS::Set;
use Image::Magick::XS::Type;
use Image::Magick::XS::Types;
use Image::Magick::XS::Util;
use Image::Magick::XS::Version;
use Image::Magick::XS::X11;
use Image::Magick::XS::X11::XCB;
use Image::Magick::XS::X11::Xlib;
use Image::Magick::XS::X11::Xutil;
use Image::Magick::XS::XS;
use Image::Magick::XS::XS::Geometry;
use Image::Magick::XS::XS::Pixel;
use Image::Magick::XS::XS::Profile;
use Image::Magick::XS::XS::Script;
use Image::Magick::XS::XS::Set;
use Image::Magick::XS::XS::Type;
use Image::Magick::XS::XS::Types;
use Image::Magick::XS::XS::Util;
use Image::Magick;
use Image::Magick::Geometry;
use Image::Magick::Pixel;
use Image::Magick::Profile;
use Image::Magick::Script;
use Image::Magick::Set;
use Image::Magick::Type;
use Image::Magick::Types;
use Image::Magick::Util;
use Image::Magick::Version;
use Image::Magick::X11;
use Image::Magick::X11::XCB;
use Image::Magick::X11::Xlib;
use Image::Magick::X11::Xutil;
use Image::Magick::XS;
use Image::Magick::XS::Geometry;
use Image::Magick::XS::Pixel;
use Image::Magick::XS::Profile;
use Image::Magick::XS::Script;
use Image::Magick::XS::Set;
use Image::Magick::XS::Type;
use Image::Magick::XS::Types;
use Image::Magick::XS::Util;
use Image::Magick::XS::Version;
use Image::Magick;


use utf8;

use open ':std', ':encoding(UTF-8)';

use Cwd;
use File::Basename;
use File::Copy;
use File::Find;
use File::Path qw(make_path);
use File::Spec;
use File::Temp;
use Getopt::Long;
use IO::File;
use List::Util qw(min max);
use List::MoreUtils qw(uniq);
use Pod::Usage;
use Scalar::Util qw(looks_like_number);
use Storable qw(dclone);
use Text::CSV;
use Time::HiRes qw(gettimeofday tv_interval);
use Unicode::Collate;
use Unicode::Normalize qw(NFC NFD NFKC NFKD);
use Unicode::UCD 'ucd_version';
use utf8;

use lib dirname(__FILE__) . '/lib';

use Book;
use Chapter;
use Config;
use DB;
use File;
use Image;


use utf8;

use open ':std', ':encoding(UTF-8)';

use Cwd;
use File::Basename;
use File::Copy;
use File::Find;
use File::Path qw(make_path);
use File::Spec;
use File::Temp;
use Getopt::Long;
use IO::File;
use List::Util qw(min max);
use List::MoreUtils qw(uniq);
use Pod::Usage;
use Scalar::Util qw(looks_like_number);
use Storable qw(dclone);
use Text::CSV;
use Time::HiRes qw(gettimeofday tv_interval);
use Unicode::Collate;
use Unicode::Normalize qw(NFC NFD NFKC NFKD);
use Unicode::UCD 'ucd_version';
use utf8;



use lib dirname(__FILE__) . '/lib';

use Book;

sub get_book {
    my $book_id = shift;
    my $db = shift;
    my $book = Book->new(book_id => $book_id, db => $db);
    return $book;
}

sub get_chapter {
    my $chapter_id = shift;
    my $db = shift;
    my $chapter = Chapter->new(chapter_id => $chapter_id, db => $
    db);
    return $chapter;
}

sub get_image {
    my $image_id = shift;
    my $db = shift;
    my $image = Image->new(image_id => $image_id, db => $
    db);
    return $image;
}

sub get_page {
    my $page_id = shift;
    my $db = shift;
    my $page = Page->new(page_id => $page_id, db => $
    db);
    return $page;
}

sub get_user {
    my $user_id = shift;
    my $db = shift;
    my $user = User->new(user_id => $user_id, db => $
    db);
    return $user;
}

sub get_word {
    my $word_id = shift;
    my $db = shift;
    my $word = Word->new(word_id => $word_id, db => $
    db);
    return $word;
}

sub get_word_form {
    my $word_form_id = shift;
    my $db = shift;
    my $word_form = WordForm->new(word_form_id => $word_
    form_id, db => $db);
    return $word_form;
}

sub get_word_type {
    my $word_type_id = shift;
    my $db = shift;
    my $word_type = WordType->new(
        word_type_id => $word_type_id, db => $db);
        return $word_type;
}

sub get_word_usage {
    my $word_usage_id = shift;
    my $db = shift;
    my $word_usage = WordUsage->new(
        word_usage_id => $word_usage_id, db => $db);
        return $word_usage;
}

sub get_word_usage_type {
    my $word_usage_type_id = shift;
    my $db = shift;
    my $word_usage_type = WordUsageType->new(
        word_usage_type_id => $word_usage_type_id, db => $db);
        return $word_usage_type;
}

sub get_word_usage_word {
    my $word_usage_word_id = shift;
    my $db = shift;
    my $word_usage_word = WordUsageWord->new(
        word_usage_word_id => $word_usage_word_id, db => $db);
        return $word_usage_word;
}



