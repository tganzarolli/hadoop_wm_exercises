#!/usr/bin/ruby -n
#the -n option after ruby makes this script run once for every line of the input
line = "#{$_}".chomp
line.split(/\W/).each { |word| puts "#{word[0].chr}\t#{word.length}" if !word.empty? }