require_relative 'advent_data'

data = AdventData.new(day: 1, session: ARGV[0]).get

left_list = []
right_list = []

data.each do |string|
 left_value, right_value = string.scan(/\d+/)
 left_list << left_value.to_i
 right_list << right_value.to_i
end

left_list = left_list.sort
right_list = right_list.sort

distances = []

left_list.each_with_index do |left_value, index|
  right_value = right_list[index]
  distances << (left_value - right_value).abs
end

puts distances.sum
