# def solution(int)
#   multiples = []
#   (1...int).each { |num| multiples << num if num % 3 == 0 || num % 5 == 0 }
#   multiples.sum
# end

def solution(int)
  (1...int).select { |num| num if num % 3 == 0 || num % 5 == 0 }.sum
end


p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168
p solution(587)