# encoding: utf-8
require 'test/unit'
require '../src/WordSort.rb'

class WordSortTests < Test::Unit::TestCase

	def setup
		@@word1 = "cdba"
		@@expected1 = "abcd"
		
		@@word2 = "£$&*(%AfksdBaDwe"
		@@expected2 = "£$&*(%AaBDdefksw"
		
		@@word3 = "abcdABCD"
		@@expected3 = "AaBbCcDd"
		
		@@word4 = "AaBbCcDd"
		@@expected4 = "AaBbCcDd"
	end

	def testWordSort
		sorted = WordSort.word_sort(@@word1)
		assert_equal(@@expected1, sorted)
		
		sorted = WordSort.word_sort(@@word2)
		assert_equal(@@expected2, sorted)

		sorted = WordSort.word_sort(@@word3)
		assert_equal(@@expected3, sorted)

		sorted = WordSort.word_sort(@@word4)
		assert_equal(@@expected4, sorted)
	end	

end
