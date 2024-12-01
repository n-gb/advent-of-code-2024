require_relative 'advent_data'

data = AdventData.new(day: 1, session: ARGV[0]).get

left_list = []
right_list = []

data.each do |string|
 left_value, right_value = string.scan(/\d+/)
 left_list << left_value.to_i
 right_list << right_value.to_i
end

similarity_score = []

left_list.each do |left_value|
  multiplier = right_list.select {|element| element == left_value }.count
  similarity_score << (left_value * multiplier)
end

puts similarity_score.sum
