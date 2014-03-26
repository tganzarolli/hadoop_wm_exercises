#!/usr/bin/ruby

last_splited = nil
count = total = 0
ARGF.each do |line|
  splited = line.chomp.split
  if (last_splited && splited[0] != last_splited)
    puts("#{last_splited}\t#{(total.to_f)/(count.to_f)}")
    count = total = 0
  end
  total += splited[1].to_i
  count += 1
  last_splited = splited[0]
end
puts("#{last_splited}\t#{(total.to_f)/(count.to_f)}")