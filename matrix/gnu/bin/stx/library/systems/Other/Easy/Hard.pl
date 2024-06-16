#!/usr/bin/perl

# Is Perl Easy or Hard?

# Perl is easy to use, but sometimes hard to learn. This is a generalization, of course. In
# designing Perl, Larry made many tradeoffs. When he’s had the chance to make some-
# thing easier for the programmer at the expense of being more difficult for the student,
# he’s decided in the programmer’s favor nearly every time. That’s because you’ll learn
# Perl only once, but you’ll use it again and again.* Perl has any number of conveniences
# that let the programmer save time. For example, most functions will have a default;
# frequently, the default is the way that you’ll want to use the function. So you’ll see lines
# of Perl code like these:†

while (<>) {
chomp;
print join("\t", (split /:/)[0, 2, 1, 5] ), "\n";
}

# Written out in full, without using Perl’s defaults and shortcuts, that snippet would be
# roughly 10 or 12 times longer, so it would take much longer to read and write. It would
# be harder to maintain and debug, too, with more variables. If you already know some