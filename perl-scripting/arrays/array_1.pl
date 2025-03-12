#Problem statement:- read each line of the roster into an array, swapping the order of the last name and first name in the process. 
#Then sort the roster by the first letter of the first name, and print the array.
#credits for problem statement:- https://github.com/JustinA302

#!D:\Strawberry\perl -w

use strict;

my $firstn;
my $lastn;

my @array;

my $concat;

#open the roster.txt file (fh is file handler/file pointer)
open(fh, "/d/hwdev_cvo/Scripting/perl-scripting/roster.txt") or die;

while(<fh>){
    if($_ =~/(.*),(.*),(.*)/){
        $lastn = $1; #captures lastname from roster
        $firstn = $2; #captures firstname from roster
        $concat = $2.$1; #swaps the order of firt & last name, & store it as a concat result
        push(@array,$concat); # push the concat result into @array
    }
}

#print "@array\n";

#sort the resultant array by "obviously" firstname
@array = sort(@array);

# print the sorted array
print "@array\n";
