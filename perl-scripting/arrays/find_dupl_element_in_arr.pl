#perl script to find duplicate elements in the array
#!D:\Strawberry\perl -w

use strict;
#input array
my @array = (10,4,5,1,2,9,8,5,5,5,5,6,7,2,3,4,4,4);

#hash to capture count of all elements in the array
my %hash;

#iterate through the array to count number of duplicate elements in an array
for my $item (@array){
    #print("$item","\n");
    $hash{$item}++;
}

#printing associative array/hash with count for all elements in input array (@array)
for my $num (keys %hash){
    #print "$num=>$hash{$num}\n";
}

#capturing keys from the hash which holds unique elements in the array (of course not preserving order)
my @unique = keys %hash;
print "array after removing duplicate elements:-(@unique)\n";