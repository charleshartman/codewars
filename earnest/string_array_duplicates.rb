# string_array_duplicates.rb
# 6 kyu

# In this Kata, you will be given an array of strings and your task is to
# remove all consecutive duplicate letters from each string in the array.

# Strings will be lowercase only, no spaces. See test cases for more examples.

def dup(arr)
  arr.map(&:squeeze)
end

p dup(["ccooddddddewwwaaaaarrrrsssss","piccaninny","hubbubbubboo"]) == ['codewars','picaniny','hubububo']
p dup(["abracadabra","allottee","assessee"]) == ['abracadabra','alote','asese']
p dup(["kelless","keenness"]) == ['keles','kenes']
p dup(["Woolloomooloo","flooddoorroommoonlighters","chuchchi"]) == ['Wolomolo','flodoromonlighters','chuchchi']
p dup(["adanac","soonness","toolless","ppellee"]) == ['adanac','sones','toles','pele']
p dup(["callalloo","feelless","heelless"]) == ['calalo','feles','heles']
p dup(["putteellinen","keenness"]) == ['putelinen','kenes']
p dup(["kelless","voorraaddoosspullen","achcha"]) == ['keles','voradospulen','achcha']

# completed in 5m
# very easy with String#squeeze.
