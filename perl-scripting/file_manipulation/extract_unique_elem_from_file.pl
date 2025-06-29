
#!D:\Strawberry\perl -w

use strict;

my %hash;

my $key;

open(my $fh, "</d/hwdev_cvo/Scripting/perl-scripting/file_manipulation/sample.txt");
open(my $fw, ">/d/hwdev_cvo/Scripting/perl-scripting/file_manipulation/unique_sample.txt");

while(<$fh>){
    $hash{$_}++;
    if($hash{$_} == 1){
    print $fw "$_";
    }
}
