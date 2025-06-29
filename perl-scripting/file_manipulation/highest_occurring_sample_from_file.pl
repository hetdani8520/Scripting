
#!D:\Strawberry\perl -w

use strict;

my %hash;

my $key;

my $max_val=0;
my $max_key=0;

open(my $fh, "</d/hwdev_cvo/Scripting/perl-scripting/file_manipulation/sample.txt");
open(my $fw, ">/d/hwdev_cvo/Scripting/perl-scripting/file_manipulation/unique_sample.txt");

while(<$fh>){
    $hash{$_}++;
}

for $key (keys %hash){
    if($hash{$key} > $max_val){
        $max_val = $hash{$key};
        $max_key = $key;
    }
}

print "highest occurring sample is $max_key & has occurred $max_val times in file";