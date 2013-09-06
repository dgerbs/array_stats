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

	def freq
		freq_hash = {}
		@array.each do |num|
			num_string_length = num.to_s.length
			if freq_hash.has_key?(num_string_length)
				freq_hash[num_string_length] += 1
			else
				freq_hash[num_string_length] = 1
			end
		end
		freq_hash
	end

	def digit_freq
		digit = {}
		@array.each do |num|
			if digit.has_key?(num)
				digit[num] += 1
			else
				digit[num] = 1
			end
		end
		digit
	end
	
	private

	def sort
		@array.sort!
	end
end

# a = ArrayStats.new([1, 1000, 200, 300, 3000, 4000, 5500, 5500])

# a.freq