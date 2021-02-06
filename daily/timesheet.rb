# timesheet.rb

# Background:

# At work I need to keep a timesheet, by noting which project I was working on
# every 15 minutes. I have an timer that beeps every 15 minutes to prompt me to
# note down what I was working on at that point, but sometimes when I'm away
# from my desk or working continuously on one project, I don't note anything
# down and these get recorded as null.

# Task:

# Help me populate my timesheet by replacing any null values in the array with
# the correct project name which is given by surrounding matching values.

p fill_gaps([1,nil,1]) == [1,1,1]
# Replace nill values surrounded by matching values
p fill_gaps([1,nil,nil,nil,1]) == [1,1,1,1,1]
# There may be multiple nils
p fill_gaps([1,nil,1,2,nil,2]) == [1,1,1,2,2,2]
# There may be multiple replacements required
p fill_gaps([1,nil,2,nil,2,nil,1]) == [1,nil,2,2,2,nil,1]
# No nesting.
p fill_gaps([1,nil,2]) == [1,nil,2]
# No replacement if ends don't match
p fill_gaps([nil,1,nil]) == [nil,1,nil]
# No replacement if ends don't match off the ends of the array
p fill_gaps(['codewars', nil, nil, 'codewars', 'real work', nil, nil, \
  'real work']) == ["codewars", "codewars", "codewars", "codewars", \
  "real work", "real work", "real work", "real work"]
# Works with strings too

=begin --> PEDAC

problem/rules:
  - given an array of values, if a nil value is bracketed by two equal values,
    then make the nil equal the values that bracket it.
  - must be bracketed!
  - we are looking for the next non-nil value... multiple nils bracketed
    between equal values should all be changed
  - nested brackets do not change

input: array
output: array

data structure:
  - arrays... mutate or build new?

algorithm:
  - iterate through given array in place (mutate)
  - initialize start to nil
  - iterate through array to find first non nil value
    if value is not nil then assign that value to (start)

=end
