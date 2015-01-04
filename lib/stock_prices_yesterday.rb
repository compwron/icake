# https://www.interviewcake.com/question/stock-price

# Writing interview questions hasn't made me rich. Maybe trading Apple stocks will.
# I have an array stockPricesYesterday where:

# The indices are the time, as a number of minutes past trade opening time, which was 9:30am local time.
# The values are the price of Apple stock at that time, in dollars.
# For example, the stock cost $500 at 10:30am, so stockPricesYesterday[60] = 500.

# Write an efficient algorithm for computing the best profit 
# I could have made from 1 purchase and 1 sale of 1 Apple stock yesterday. 
# For this problem, we won't allow "shorting"—you must buy before you sell.

a = [60, 500]

def foo input
end




b = foo(a)


if stockPricesYesterday[a.first] == a.last
	puts "works"
else
	puts "nope. got #{b.first} instead of #{a.first}"
end

