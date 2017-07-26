#!/usr/bin/ruby -w

Thread.abort_on_exception = false
threads = []

4.times do |number|
  threads << Thread.new(number) do |i|
    raise "Boob! #{i}" if i == 2
    print "#{i}\n"
  end
end

threads.each do |t|
  begin
    t.join
  rescue RuntimeError => e
    puts "Failed:#{e.message}"
  end
end
