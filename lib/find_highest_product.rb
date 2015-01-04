# Given an array_of_ints, find the highest_product you can get from three of the integers.
# The input array_of_ints will always have at least three integers.
# https://www.interviewcake.com/question/highest-product-of-3

a = [1, 2, 3, 4]
b = 24

def foo(input)
  input.combination(3).to_a.map { |slice| slice.inject(:*) }.max
end

if foo(a) == b
  puts 'works'
else
  puts "nope. got #{a} instead of #{b}"
end
