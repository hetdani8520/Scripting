#perl script to find max elements in the array
#!D:\Strawberry\perl -w

use strict;

my @array = (10,15,20,25,43,2,4,6,5);

my $max_value = 0;
my $max_index = 0;
my $size_of_arr = @array;

#print "$array[0]\n";

for(my $i=0;$i<$size_of_arr;$i++){
    #update the max_value only if current_value is greater than max_value else retain the max_value 
    if($array[$i] > $max_value){
        $max_value = $array[$i];
        $max_index = $i;
    }
}

print "max value in the array:$max_value\n";