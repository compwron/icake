# https://www.interviewcake.com/question/product-of-other-numbers

# You have an array of integers, and for each index you want to find the product of every integer except the integer at that index.
# Write a function get_products_of_all_ints_except_at_index() that takes an array of integers and returns an array of the products.

# For example, given:

#   [1, 7, 3, 4]
# your function would return:

#   [84, 12, 28, 21]
# by calculating:

#   [7*3*4, 1*3*4, 1*7*4, 1*7*3]
# Do not use division in your solution.

a = [1, 7, 3, 4]
b = [84, 12, 28, 21]

# a = [1, 2, 6, 5, 9]
# b = [540, 270, 90, 108, 60]

def foo input
	input.map {|i| input.reject{ |j| j == i}.inject(:*) }
end

if foo(a) == b
	puts "works"
else
	puts "nope. got #{b} instead of #{a}"
end

