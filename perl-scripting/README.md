# Perl Cheatsheet & Learnings

## Glob - Pattern Matching
1. Glob pattern matching, or Globs, are a set of characters that are used as wildcards to match more than just literal characters.
2. Glob is short for *global* and this style of pattern matching is used in most Linux shells (bash, csh, ksh, etc) & many programming/scripting languages have commands that support glob pattern matching, or globbing.

## Regular Expression (Regex) - Pattern Matching
1. Regular Expression pattern matching, AKA regex, regexp, regexes, share the same intent as of globbing but their target audience/use-case audience is mainly linux commands (Ex.:grep), command editors, various programming/scripting languages.
2. Regex are composed of two types of characters. There are *literal characters* & *metacharacters*.
* *Literal characters* are used in a single regular expression where they are literally matched. Ex.:- if "h" is used in the regular expression it only matches a single lower case "h", it doesn't match an upper case "'H" or a series of "h" characters "hhhhh" although it could match one "h" in the series depending on the rest of the expression.
* *Metacharacters* are regular characters/symbols that have special meaning besides their literal meaning. Ex.:- The period "." metacharacter matches any character including a literal period.

## Glob mapping to Regular Expression
| **Glob Wildcard** 	| **Equivalent Regular Expression** 	|                         **Description**                        	|
|-------------------	|:---------------------------------:	|:--------------------------------------------------------------:	|
| ?                 	| .                                 	| matches any single character                                   	|
| *                 	| .*                                	| matches any number of characters including none (zero of more) 	|
