# press_any_key.rb

require 'io/console'
def continue_story
  print "press any key"
  STDIN.getch
  print "            \r" # extra space to overwrite in case next sentence is short
end

puts "An awesome story begins..."
continue_story
puts "And ends after 2 lines"