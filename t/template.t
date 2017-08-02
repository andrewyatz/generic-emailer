use strict;
use warnings;
use Test::More;
use Test::Differences;

use File::Basename qw/dirname/;
use File::Spec;

my $dir = dirname(File::Spec->rel2abs(__FILE__));

my $actual = `$dir/../bin/generic-emailer --config $dir/data/test.ini --input $dir/data/test.tsv --template $dir/data/test.template`;

my $expected = qq{====================
Hi there,
How are you Kylie? You owe 2.2.
Bye
====================
====================
Hi there,
How are you Bob? You owe 1.5.
Bye
====================
};

eq_or_diff($actual, $expected, 'Checking template output is as expected');

done_testing();
