# sales_calculation_test.pl

use strict;
use warnings;
use Test::Simple tests => 1;
use lib '/home/pavan/lib/sales_sphere';
require 'sales_calculation.pl';

my $result = calculate_sales(5, 10);
my $expected = 50;

ok($result == $expected, "Total sales calculation is correct");

