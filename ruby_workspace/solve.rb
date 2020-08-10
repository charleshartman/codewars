def solve(str)
  result = [0, 0, 0, 0]
  str.each_char do |chr|
    if chr.match?(/[A-Z]/) then result[0] += 1
    elsif chr.match?(/[a-z]/) then result[1] += 1
    elsif chr.match?(/[0-9]/) then result[2] += 1
    else result[3] += 1
    end
  end
  result
end

p solve("Codewars@codewars123.com") == [1,18,3,2]
p solve("bgA5<1d-tOwUZTS8yQ") == [7,6,3,2]
p solve("RYT'>s&gO-.CM9AKeH?,5317tWGpS<*x2ukXZD") == [15,8,6,9]
p solve("P*K4%>mQUDaG$h=cx2?.Czt7!Zn16p@5H") == [9,9,6,9]
p solve("$Cnl)Sr<7bBW-&qLHI!mY41ODe") == [10,7,3,6]
p solve("@mw>0=QD-iAx!rp9TaG?o&M%l$34L.nbft") == [7,13,4,10]

# cool solution
def solve(string)
  ['A-Z','a-z','0-9','^A-Za-z0-9'].map { |range| string.count(range) }
end