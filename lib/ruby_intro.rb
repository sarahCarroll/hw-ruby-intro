# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  array.empty? ? 0 : array.last + sum(array[0, array.size - 1])
  # array[0] = array.pop + array[0];
  # sum(array) until array.length == 1
  # array.first
end


def max_2_sum(a)
  if a.size ==1
    return a.pop
  end
      
  a.empty? ? 0 :  (a.sort!.pop) + (a.sort!.pop)
end

def sum_to_n?(array, val)
  return false if array.empty? || val.zero?
  array.combination(2).any? {|a, b| a + b == val }
end

# Part 2

def hello(name)
	"Hello, #{name}"
end

def starts_with_consonant? s
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  return true if s == "0"
  # match any number of 1's and/or 0's. Followed by 00 (indicated multiple of 4 - 4 =100 in binary)
	/^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
 attr_accessor :isbn, :price

  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string 
     format("$%2.2f", @price)
  end
end
