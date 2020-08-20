def premier_league_standings(teams)
  seeding = {}
  seeding[1] = teams.delete(1)
  counter = 2
  rank = teams.sort_by(&:last)
  rank.each do |sub| 
    seeding[counter] = sub[1] 
    counter += 1
    break if counter == (rank.length + 2)
  end
  seeding
end

p premier_league_standings({1=>'Arsenal'}) == {1=>'Arsenal'}
p premier_league_standings({2=>'Arsenal',3=>'Accrington Stanley',1=>'Leeds United'}) \
 == {3=>'Arsenal',2=>'Accrington Stanley',1=>'Leeds United'}
p premier_league_standings({1=>'Leeds United',2=>'Liverpool',3=>'Manchester City',4=>'Coventry',5=>'Arsenal'}) \
 == {1=>'Leeds United',2=>'Arsenal',3=>'Coventry',4=>'Liverpool',5=>'Manchester City'}

# input: hash
# output: hash, sorted by input key 1, then alpha by value
# data structure: hashes
# algorithm:
# => initialize new result hash (seeding)
# => fetch key 1 and insert into seeding
# => delete k-v pair with 1 as key
# => sort remaining hash values and insert into result hash
# => return result hash