#!D:\Strawberry\perl -w

use strict;

my $mismatch_cnt;

open(my $fh, "</d/hwdev_cvo/Scripting/perl-scripting/file_manipulation/patterns.txt") or die;

while(<$fh>){
    if($_ =~ m/MISMATCHES=\s+(\d+)/){
        $mismatch_cnt = $1;
        #extract mismatch count from log & print it
        print "$mismatch_cnt\n";
    }
}