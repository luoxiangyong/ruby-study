#!/usr/bin/ruby -w

class Song
  def initialize(name, artist, duration)
    @name    = name
    @artist   = artist
    @duration= duration
  end

  def to_s
    "Song:#@name -- #@artist(#@duration)"
  end

end


song =  Song.new('luoxiangyong','prog',30)
puts song.inspect
puts song
