# encoding: utf-8
require 'test/unit'
require '../src/WordSort.rb'

class WordSortTests < Test::Unit::TestCase

	def test_get_codepoint
		codepoint =	WordSort.get_codepoint("abcd", 1)
		assert_equal(98, codepoint)
		codepoint = WordSort.get_codepoint("abcd", 0)
		assert_equal(97, codepoint)
		codepoint = WordSort.get_codepoint("abcd", 5)
		assert_equal(-1, codepoint)
		
		codepoint = WordSort.get_codepoint("£$£", 0)
		assert_equal(163, codepoint)
	end
	
	def test_get_max_length
		words = ["abcdedfg", "", "£$££", "freofk!$£$"]
		max_length = WordSort.get_max_length(words)
		assert_equal(10, max_length)
	end
	
	
end
