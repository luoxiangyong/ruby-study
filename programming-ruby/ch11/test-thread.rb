#! /usr/bin/ruby -w

count = 0
threads = []

10.times do |i|
  threads << Thread.new(i) do
    sleep(rand(0.1))
    Thread.current['mycount'] = i
    count += 1
  end
end

threads.each { |t| t.join(); print t['mycount'], ' ,'}
puts "count = #{count}"
