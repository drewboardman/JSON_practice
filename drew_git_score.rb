require 'json'
require "open-uri"
@results = JSON.parse(open("https://github.com/drewboardman.json").read)

events = []
user_points = 0
@results.each { |hash| events << hash['type'] }

events.each do |event|
  case event
    when "PushEvent"
      user_points += 5
    when "CreateEvent"
      user_points += 4
    else
      user_points += 1
  end
end

puts "This user has: #{user_points} points"
