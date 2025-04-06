#Remove duplicate words from file
#!D:\Strawberry\perl -w

use strict;

my %dup_logger;

#difference between declaring file handle using $fh Vs using a fh handle has mostly to do with its scope.
#declaring the file handle with $fh scope restricts its scope while "fh" file handle is a global variable with scope throughout the program.
open(fh,"</d/hwdev_cvo/Scripting/perl-scripting/duplicate_words.txt"); #read mode
open(fw,">/d/hwdev_cvo/Scripting/perl-scripting/unique_words.txt"); #write mode

while(<fh>){
    $dup_logger{$_}++; #this increments whenever a word in the file is encountered (post-increment)
    #only unique words from the input parser file(duplicate_words.txt) get written into unique_words.txt
    if($dup_logger{$_} == 1){
    #write unique words into file unique_words.txt
    print fw "$_";
    #print $dup_logger{$_}, "\n";
    }
}

close(fw);
close(fh);
