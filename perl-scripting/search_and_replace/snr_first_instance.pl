#!D:\Strawberry\perl -w

use strict;

#file i/o - 
#1)find patterns from file (track duplicates/unique)
#2)find & replace - 1st instance, all instances

my $cnt=0;

open(my $fh, "</d/hwdev_cvo/Scripting/perl-scripting/search_and_replace/notes.txt") or die;
open(my $fw, ">/d/hwdev_cvo/Scripting/perl-scripting/search_and_replace/notes_first_instance.txt") or die;

while(<$fh>){
    #chomp very important to match string without \n
    chomp($_);
    #search pattern in input file & increment count
    if($_  =~ /tenet/){
        $cnt++;
    }
    #replace the searched pattern only for first occurrence of pattern (cnt=1)
    if($cnt == 1){
    $_ =~ s/tenet/inception/;
    }
    #print everything into file rep by pointer fw
    print $fw "$_\n";
}

close($fh);