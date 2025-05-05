#!D:\Strawberry\perl -w

use strict;

my $val = 44;

print "value is $val\n";

print"#--------------------------------------------------------------------------\n";

my %hash_dec = ("name"=>"het",
                "age"=> 25);

for my $key (keys % hash_dec){
    print "$key=>$hash_dec{$key}\n";
}

print"#--------------------------------------------------------------------------\n";

my @a = (1..8);

my $size = @a;

my $last_idx= $#a;

print "arr=@a\n";
print "size of arr=$size\n";
print "last index of arr=$last_idx\n";
print "last element of arr = $a[$last_idx]\n";

print"#--------------------------------------------------------------------------\n";

my $str1 = "Hello";
my $str2 = "World";
my $concat = $str1.$str2;
print "concat str= $str1"."$str2\n";
#print "$concat\n";

print"#--------------------------------------------------------------------------\n";

#split() Vs join()
my @arr1 = ("Hello","World","!");
my $join_str= join(",",@arr1);
print "str_join = $join_str\n";

#split
my @split_arr = split(",",$join_str);
print "split arr = @split_arr\n";

print"#--------------------------------------------------------------------------\n";

#chop vs chomp

#chomp() -->removes \n from the string (if exists), function returns 1 if it finds \n in str & removes it else returns 0
my $str4 = "okay string\n";
my $chomp_ret_val = chomp($str4); #returns 1 if chomp() call was successful (success is removing \n)
print "post chomp string = $str4\n";
print "chomp ret value = $chomp_ret_val\n";


#chop() -->chops of last char of the string & returns the removed char
my $chop_str = "hello";
my $chop_ret_val = chop($chop_str);
print "chop ret val=$chop_ret_val\n";
print "chop_str=$chop_str\n";

print"#--------------------------------------------------------------------------\n";

#how to get all hash values
my %hash_demo = ("name"=>"het dani",
                "age"=> 25,
                "nationality"=>"Indian");
my @values = values % hash_demo;
print "hash_demo values in arr=@values\n";

#how to get all hash keys
my @keys = keys %hash_demo;
print "hash_demo keys in arr=@keys\n";

print"#--------------------------------------------------------------------------\n";
#size of hash
my $size_of_hash_demo = scalar %hash_demo;
print "size of hash_demo=$size_of_hash_demo\n";

print"#--------------------------------------------------------------------------\n";