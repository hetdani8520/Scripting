#highest occuring word in the file
#!D:\Strawberry\perl -w

use strict;

#hash which tracks word occurrences in a file
my %words;

#temp vars to hold & detect highest occurring word from the file
my $max_value = 0; #this will contain the count of highest occurring word from the file
my $max_key; #this will contain our highest occuring word from the file


open(fh,"</d/hwdev_cvo/Scripting/perl-scripting/english.sorted") or die;
open(fw,">/d/hwdev_cvo/Scripting/perl-scripting/hashed_words.txt") or die;

while(<fh>){
    chomp($_);
    #count occurrence of each word in the file
    $words{$_}++;
    #dumping hashed data into hashed_words.txt
    print fw "$_==>$words{$_}\n";
}

#sort the words by their occurrence count (descending order) & take the top 5
my @top_words = 
    (sort { $words{$b} <=> $words{$a} } keys %words)[0..4];

#foreach my $key (keys %words){
    #if($words{$key} > $max_value){
    #    $max_value = $words{$key};
    #    $max_key = $key;
    #}
#}

print "Top 5 most occurring words:\n";
foreach my $word (@top_words) {
    print "$word => $words{$word}\n";
}

#print highest occuring word from the file
#print "highest occuring word from the file is: $max_key\n";

close(fh);
close(fw);