#Problem statement:- The english.sorted file contains a list of words of variable length. 
#Write perlex1.pl to find the number of occurrences of each word length in english.sorted. That is, find and print the number of words in english.sorted that are one character long, two characters long, three characters long and so on.
#credits for problem statement & input parser file:- https://github.com/JustinA302

#!D:\Strawberry\perl -w

use strict;

my $len;

my $word;
#hash stores word length occurrences for each word in the file
#specifically the "key" in the hash tells us about word length & "value" tells us word length occurrence
my %wordlen;

#open the roster.txt file (fh is file handler/file pointer)
open(fh, "/d/hwdev_cvo/Scripting/perl-scripting/english.sorted") or die;

while(<fh>){
    #print "$_\n";
    chomp($_);
    $len = length($_);
    $wordlen{$len}++;
}

print "Word length", "\t\t", "Occurences", "\n\n";

foreach $len (keys %wordlen){
    print $len,"\t\t\t\t", $wordlen{$len},"\n";
}