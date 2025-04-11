#Simple program to search for all UVM_WARNINGS in input log file(logs.txt) & replace it with UVM_ERRROR & stuff those changes into a new output file called uvm_snr.txt
#!D:\Strawberry\perl -w

use strict;

open(my $fh,"</d/hwdev_cvo/Scripting/perl-scripting/logs.txt"); #read mode
open(my $fw,">/d/hwdev_cvo/Scripting/perl-scripting/uvm_snr.txt"); #write mode

while(<$fh>){
    chomp($_);
    #use metacharacters during replacement regex
    #replace all
    $_ =~ s/^(.*)WARNING/$1ERROR/;
    print $fw "$_\n";
}

close($fw);
close($fh);
