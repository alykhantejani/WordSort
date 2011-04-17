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
	
	def test_sort_words
		words = ["adfhe", "$£DF", "adf"]
		WordSort.sort_words(words, 0)
		assert_equal(3, words.length)
		assert_equal("$£DF", words[0])
		assert_equal("adfhe", words[1])
		assert_equal("adf", words[2])
	end
	
	def test_sort
		words = ["adfhe", "$$$£%", "abd", "adf"]
		WordSort.sort(words)
		assert_equal(4, words.size)
		assert_equal("$$$£%", words[0])
		assert_equal("abd", words[1])	
		assert_equal("adf", words[2])
		assert_equal("adfhe", words[3])
	end
	
end
