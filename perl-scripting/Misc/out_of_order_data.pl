#we are testing a stream of 10 characters
# the input will be something like [a,a,a,b,b,c,c,d,d,e]
# the output will be something like [b,a,d,a,b,c,c,d,e,a]
# write the code to check that the input characters have come out

#!D:\Strawberry\perl -w

use strict;

my @in = ("a","a","a","b","b","c","c","d","d","e");
my @out = ("b","a","d","a","b","c","c","d","e","a");

my %in;
my %out;

#capture input stream & count of each character in input stream
foreach my $i (@in){
    $in{$i}++;
}

#capture output stream & count of each character in output stream
foreach my $j (@out){
    $out{$j}++;
}

print "input stream hash is as follows:\n";

#printing input stream hash
foreach my $pr_in (keys %in){
    print "$pr_in=>$in{$pr_in}\n";
}

print "------------------------------------------\n";

print "output stream hash is as follows:\n";
#printing output stream hash
foreach my $pr_out (keys %out){
    print "$pr_out=>$out{$pr_out}\n";
}

print "------------------------------------------\n";
print "check if input & output stream are the same:\n";
#logic to make sure input & output stream are coherent
foreach my $key1 (keys %in){
    foreach my $key2 (keys %out){
        #use eq to compare strings
        if(($key1 eq $key2) && ($in{$key1} == $out{$key2})){
            print "data match found between input & output stream for char $key1\n";
            #next;
        }
    }
}