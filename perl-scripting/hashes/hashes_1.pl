#Problem statement:- roster to hash Write perlex4.pl to read each line of the class roster into a hash. 
#The hash key is the student's id (not email), and hash value will be the student “lastname, firstname” (string). 
#Then, in a separate foreach loop, print each student's id (key), followed by their name (value).
#credits for problem statement:- https://github.com/JustinA302

#!D:\Strawberry\perl -w

use strict;

my $concat;
my $lastn;
my $firstn;
my $stud_key;
my %roster;
my $value;

#open the roster.txt file (fh is file handler/file pointer)
open(fh, "/d/hwdev_cvo/Scripting/perl-scripting/roster.txt") or die;

while(<fh>){
    if($_ =~/(.*),(.*),(.*)@(.*)/){
        $lastn = $1; #capture last name
        $firstn = $2;  #capture first name
        $stud_key = $3; #capture student_id
        $concat = $1.",".$2;  #concatentaing lastname, firstname to capture it later into hash as a "value"
        $roster{$stud_key} = $concat; #capturing student name & id & feeding it into hash as key-value pair
    }
}

#print hashed roster as "student_key=>lastname, firstname"
foreach $stud_key (keys %roster){
    $value = $roster{$stud_key};
    print "$stud_key=>$value\n";
}