#!D:\Strawberry\perl -w

use strict;

my @arr = (1..9);

#can use default ($_) variable to capture element of array on every iteration
#can replace for with foreach & it works exactly the same
for(@arr){
    print("$_\n");
}

print "---------------------------------------\n";

#variable/iterator $i has local scope within the for loop
for my $i (@arr){
    print("$i\n");
}

print "C-style for loop usage in perl below:\n";
# "$#arr" is used to retrieve last index in @arr
for(my $j=0;$j<=$#arr;$j++){
    print("$arr[$j]\n");
}