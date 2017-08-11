class Quicksort

	def self.sort(array)

		if array.length <= 1

			return array

		else

			pivot_point = (array.length / 2).to_i
			pivot_val = array[pivot_point]
			array.delete_at(pivot_point)

			smaller = Array.new
			greater = Array.new

			array.each do |val|

				if val <= pivot_val
					smaller << val
				else
					greater << val
				end
			end

			return  self.sort(smaller) + [pivot_val] + self.sort(greater)
		end
	end

end