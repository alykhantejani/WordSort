require 'test/unit'
require '../src/Sort.rb'


class SortTests < Test::Unit::TestCase
	def testInsertionSort
		input = [-2,3,-4,6,7,-9]
		expected = [-9,-4,-2,3,6,7]
		sorted = Sort.insertion_sort(input)
		assert_equal(expected.length,sorted.length)
		expected.length.times {|i|
			assert_equal(expected[i], sorted[i]) 
		}
	end	
end