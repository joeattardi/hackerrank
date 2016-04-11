=begin
https://www.hackerrank.com/challenges/pangrams

Pangrams are sentences constructed by using every letter of the alphabet at least once.

Given a sentence ss, tell Roy if it is a pangram or not.

Input Format
Input consists of a string s.

Constraints 
Length of ss can be at most 10^3 (1 <= |s| <= 10^3) and it may contain spaces, lower case and upper case letters. 
Lower-case and upper-case instances of a letter are considered the same.

Output Format
Output a line containing "pangram" if s is a pangram, otherwise output "not pangram".
=end

letters = gets.chomp.downcase.gsub(/\s/, '').split('').uniq.sort
alphabet = ('a'..'z').to_a
puts letters == alphabet ? 'pangram' : 'not pangram'

