# mo_munsters.rb

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

male_munsters_total_age = 0

munsters.each_value do |hash|
  male_munsters_total_age += hash["age"] if hash["gender"] == "male"
end

p male_munsters_total_age