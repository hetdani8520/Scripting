#get input from user using STDIN & break out if user enters 0 on stdin or end of file is reached
#!D:\Strawberry\perl -w

use strict;


my $read;

    $read = <STDIN>;
    print $read;
    #if either 0 is entered or EOF is reached then break out from STDIN on STDOUT
    last if $read eq "0";
    #push(@STDIN, $read);