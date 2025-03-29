#Problem statement:- Read a file(roster.txt) && store it into a variable using $/ special input record separator.
#credits for problem statement & input parser file:- https://github.com/JustinA302

#By setting $/ to undef, you are telling Perl to treat the entire file as a single record. 
#This means <$fh> will read the entire content of the file at once, regardless of the line breaks.

#The local $/ = undef; ensures that this change to $/ is temporary and only applies within the scope of the block. 
#Outside the block, $/ will revert to its default value (newline).

#To read an entire file into a variable by manipulating $/, you can set $/ to undef, which tells Perl to read the entire file in one go until EOF (end of file).

#!D:\Strawberry\perl -w

use strict;

#variable to store content of the entire input file
my $content;

#if mode not specified, default is read mode
#fh is file handle passed as an arg when opening a file using open() function

open(fh, "/d/hwdev_cvo/Scripting/perl-scripting/roster.txt")  or die "Can't open < roster.txt: $!";

#<fh> tells perl to read the next line from the file associated with fh until EOF is encountered

#set the $/ to undef to read the whole file at once
{
    local $/ = undef; #remporarilyy set the $/ to undef for reading the entire file
    $content = <fh>;  #read the entire file into the variable $content
}

#this prints entire fiele content
print "$content";

#close the file
close(fh);