#!D:\Strawberry\perl -w

use strict;

#file i/o - 
#1)find patterns from file (track duplicates/unique)
#2)find & replace - 1st instance, all instances

my $cnt=0;

open(my $fh, "</d/hwdev_cvo/Scripting/perl-scripting/search_and_replace/notes.txt") or die;
open(my $fw, ">/d/hwdev_cvo/Scripting/perl-scripting/search_and_replace/notes_all_instances.txt") or die;

while(<$fh>){
    #chomp very important to match string without \n
    chomp($_);
    #search pattern & replace all instances of the same (g modifier will globally apply to all places in same line where pattern matches)
    $_ =~ s/(tenet)+/inception/g;
    #print everything into file rep by pointer fw
    print $fw "$_\n";
}

close($fh);