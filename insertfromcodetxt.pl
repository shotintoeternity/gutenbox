#!/usr/bin/perl

use strict;
use warnings;

$^I = '.bak'; # create a backup copy 

my $data;
my $size = 2000; # or whatever
open( FH, "code.txt") or die("Error: $!\n");
read( FH, $data, $size );
close FH;

print $data;
$data="<BODY>".$data;

while (<>) {
   s/<BODY>/$data/gi; # do the replacement
   print; # print to the modified file
}
