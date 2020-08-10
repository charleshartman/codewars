# after_midnight_part2.rb

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def after_midnight(str)
  hours, minutes = str.split(':').map { |num| num = num.to_i }
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(str)
 before_minutes = MINUTES_PER_DAY - after_midnight(str)
 before_minutes = 0 if before_minutes == MINUTES_PER_DAY
 before_minutes
end

# Examples:
p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0