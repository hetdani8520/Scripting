#!D:\Strawberry\perl -w

#search & replace text & incorporate the change to the same file using Tie utility in perl.
#this method eliminates the introduction of intermmediate temp files/duplicate files & directly incorporates the changes to the same file.

use Tie::File;

#all cresits to JustinA(https://github.com/JustinA302/Perl-Exercises/blob/main/roster.txt) for the input parser file
tie my @file, "Tie::File", "/d/hwdev_cvo/Scripting/perl-scripting/roster.txt" or die $!;

#Tie utility dumps all the text from the input parser file into an array (@file in this case)
#To iterate over the text for some reason only for loop works with Tie utility (while loop doesn't seem to work)
for (@file) {
    s/, Paul,/, Smith,/;  #search for last name "Paul" in roster & replace it with "Smith"
    #print;
}


