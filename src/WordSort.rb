# encoding: utf-8
module WordSort

	def self.sort_words(words)
		words.each_with_index {|word, i|
			
		}
	end
		
	def self.word_sort(word)
		map = Hash.new {|hash, key| hash[key]= Array.new}
		if(word.respond_to?(:codepoints))
			word.codepoints {|val| 
				key = hash(val)
				map[key].push(val.chr("utf-8"))
			}			
			res = Array.new
			(0...63).each {|i|
				res.push map[i] if map.has_key? i
			}
			res.flatten!
			output = ""
			res.each {|x| 
				output << x
			}
			return output
		end		
	end

	def self.hash(ascii_val)
		case ascii_val
			when (0...9) 
				then ascii_val+1
			when (65...90) 
				then 11+2*(ascii_val-65)
			when (97...122)
				then 12+2*(ascii_val-97)
			else
				0
		end
	end
	
	if __FILE__ == $0
		puts WordSort.word_sort("£$&*(%AfksdBaDwe")
	end
end

