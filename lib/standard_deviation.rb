ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation
# When you find the standard deviation, print it out

sum_of_all_nums = 0
num_of_integers = 0
ages.each do |number|
  sum_of_all_nums += number
  num_of_integers += 1
end

average = sum_of_all_nums.to_f / num_of_integers.to_f

new_array_nums_minus_average = []
ages.each do |number|
  new_array_nums_minus_average << (number - average)
end

new_array_nums_squared = []
new_array_nums_minus_average.each do |number|
  x = number
  new_array_nums_squared << (number * x)
end

new_sum = 0
new_array_nums_squared.each do |number|
  new_sum += number
end

number = new_sum / num_of_integers
result = Math.sqrt(number)
final_result = result.round(2)
