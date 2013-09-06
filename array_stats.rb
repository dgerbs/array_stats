require 'ruby-standard-deviation'

class ArrayStats
	def initialize(array)
		@array = array
		@sum = 0
		sort
	end

	def largest
		@array.last
	end

	def smallest
		@array.first
	end

	def average
		sum
		@sum / @array.size
	end

	def standard_dev
		@array.stdev.round
	end

	def nth_number(num)
		@array[num]
	end

	def sum
		@array.each do |num|
			@sum += num
		end
		@sum
	end

	def product
		product = 0
		@array.each do |num|
			if product == 0
				product += num
			else
				product *= num
			end
		end
		product
	end

	def difference
		largest - smallest
	end

	private

	def sort
		@array.sort!
	end
end