require 'net/http'

class BozoClock
  
  def initialize()
    response = Net::HTTP.get URI("http://www.google.com/search?q=time")
    time = response.match /\d{1,2}:\d{2}(am|pm)/
    puts "The time according to Google is #{time}"
  end
  
end

BozoClock.new