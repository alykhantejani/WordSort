class Sort
	def self.insertion_sort(collection)
		if (collection.respond_to?(:each) && collection.respond_to?(:to_ary)  && collection.length > 0)
			arr = collection.to_ary
			(1...arr.length).each { |i|
				j = i - 1
				key = arr[i]
				while (j>=0 && key < arr[j])
					arr[j+1] = arr[j]
					j = j - 1
				end 
				arr[j+1] = key
			}
			return arr
		end
		return collection
	end
	
	def self.merge_sort(collection)
		if (collection.respond_to?(:each) && collection.respond_to?(:to_ary) && collection.length > 0)
			arr = collection.to_ary
			
		end
		return collection
	end
end



if __FILE__ == $0
	sorted = Sort.insertion_sort([-1,4,-6,3,79,8])
	sorted.each {|x| puts x}
end