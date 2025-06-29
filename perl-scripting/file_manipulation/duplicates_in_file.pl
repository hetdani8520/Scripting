#!D:\Strawberry\perl -w

use strict;

my %hash;

my $key;

open(my $fh, "</d/hwdev_cvo/Scripting/perl-scripting/file_manipulation/sample.txt");

while(<$fh>){
    $hash{$_}++;
}

for $key (keys %hash){
    print "$key=>$hash{$key}\n";
}