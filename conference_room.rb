class Meeting
  attr_reader :start, :finish
 
  def initialize(start, finish)
    @start = start
    @finish = finish
  end
end
 
 
def schedule(meetings)
  events = []
 
  meetings.each do |meeting|
    events << ["start", meeting.start]
    events << ["finish", meeting.finish]
  end
 
  # changed from events.sort_by! { |event_type, timestamp| timestamp }
  events.sort_by! { |event_type, timestamp| [timestamp, event_type] }
 
  # uncomment this for debugging if you're curious
  # p events
 
  current_num_rooms = 0
  max_num_rooms = 0
 
  events.each do |event_type, timestamp|
    current_num_rooms += event_type == "start" ? 1 : -1
    max_num_rooms = [current_num_rooms, max_num_rooms].max
  end
 
  max_num_rooms
end
 
def test_schedule
  input = [
    Meeting.new(start=8, finish=10),
    Meeting.new(start=10, finish=17),
    Meeting.new(start=23, finish=30),
    Meeting.new(start=15, finish=25),
    Meeting.new(start=8, finish=10),
  ]
 
  puts schedule(input[0...1]) == 1 # one meeting should always require 1 room
  puts schedule(input[0...2]) == 1 # confirms that finishing at 10 and starting at 10 don't overlap
  puts schedule(input[0...3]) == 1 # add another non-overlapping meeting, should stay at 1
  puts schedule(input[0...4]) == 2 # now add the meeting that overlaps with (10, 17) and (23, 30) at different times
  puts schedule(input[0...5]) == 2        # finally, add an extra meeting to make sure we fixed the issue with our sort stability
 
 
  puts schedule([]) == 0 # make sure we cover our base case
end
 
test_schedule()