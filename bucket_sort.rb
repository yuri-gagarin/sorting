require "./insertion_sort.rb"

class BucketSort

	def self.sort(array, buckets_size=4)

		min_val = array.min
		max_val = array.max 

		bucket_count = ((max_val - min_val) / buckets_size).floor + 1

		buckets = Array.new(bucket_count)

		(0..buckets.length - 1).each do | i | 
			buckets[i] = []
		end

		(0..array.length - 1).each do | i | 
			buckets[ ((array[i] - min_val) / buckets_size).floor ].push(array[i])
		end

		array.clear

		(0..buckets.length - 1).each do | i | 
			InsertionSort.sort( buckets[i] )
			buckets[i].each do | val |
				array.push(val)
			end
		end

	end

end