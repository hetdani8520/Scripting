#perl script to find min element in the array
#!D:\Strawberry\perl -w

use strict;

my @array = (10,15,20,25,43,2,4,6,5);

my $min_value = 10000; #set the default value of max_value to be sufficiently larger 
my $min_index = 0;
my $size_of_arr = @array;

#print "$array[0]\n";

for(my $i=0;$i<$size_of_arr;$i++){
    #update the min_value only if current_value is lesser than than min_value else retain the min_value 
    if($array[$i] < $min_value){
        $min_value = $array[$i];
        $min_index = $i;
    }
}

print "min value in the array:$min_value\n";