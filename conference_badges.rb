
def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  new = []
attendees.each do |attendee|
    new << badge_maker(attendee)
  end
  return new
end

def assign_rooms(attendees)
  new = []
  attendees.each.with_index(1) do |attendee,index|
  new << "Hello, #{attendee}! You'll be assigned to room #{index}!"
end
return new
end

def printer(attendees)
  printer_list = batch_badge_creator(attendees).concat assign_rooms(attendees)
  printer_list.each do |line|
    puts line
  end
end
