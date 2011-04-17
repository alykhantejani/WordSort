# encoding: utf-8
module WordSort	

	def self.sort_words(words, i)
		if words.respond_to? :each and words.respond_to? :clear and words.respond_to? :push
			map = Hash.new {|hash, key| hash[key] = Array.new}
			codepoint = nil
			key = nil
			words.each {|word|
				codepoint = getCodepoint(word, i)
				key = hash(codepoint)
				map[key].push(word)
			}
			words.clear!
			(-1...63).each {|j|
				words.push!(map[i]) if map.has_key? i
			}
			words.flatten
		end
	end
	
	def sort(words)
		max_length = get_max_length(words)
		max_length.times {|i|
			sort_words(words, i)		
		}
		return words
	end

	def self.get_max_length(words)
		max = 0
		words.each{|word|
			max = word.length if word.length > max
		}
		return max
	end

	def self.get_codepoint(word, i)
		if i < word.length
			word[i].codepoints.first
		else
			-1
		end
	end
	
	def self.hash(ascii_val)
		case ascii_val
			when -1
				then -1
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
	
end

if __FILE__ == $0

end
