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
			num_string_length = num_string_length.to_s
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

describe ArrayStats do 
	it 'returns the largest number in the provided array' do
			expect(ArrayStats.new([1, 1000, 200, 300, 3000, 4000, 5500]).largest).to eql(5500)
	end

	it 'returns the smallest number in the provided array' do
			expect(ArrayStats.new([1, 1000, 200, 300, 3000, 4000, 5500]).smallest).to eql(1)
	end

	it 'returns the average number in the provided array' do
			expect(ArrayStats.new([1, 1000, 200, 300, 3000, 4000, 5500]).average).to eql(2000)
	end

	it 'returns the standard deviation in the provided array' do
			expect(ArrayStats.new([1, 1000, 200, 300, 3000, 4000, 5500]).standard_dev).to eql(2175)
	end

	it 'returns the nth smallest number in the provided array' do
			expect(ArrayStats.new([1, 1000, 200, 300, 3000, 4000, 5500]).nth_number(3)).to eql(1000)
	end

	it 'returns the sum number in the provided array' do
			expect(ArrayStats.new([1, 1000, 200, 300, 3000, 4000, 5500]).sum).to eql(14001)
	end

	it 'returns the product in the provided array' do
			expect(ArrayStats.new([1, 1000, 200, 300, 3000, 4000, 5500]).product).to eql(3960000000000000000)
	end

	it 'returns the difference between the highest and lowest values in the provided array' do
			expect(ArrayStats.new([1, 1000, 200, 300, 3000, 4000, 5500]).difference).to eql(5499)
	end

	it 'returns a hash that breaks down how many times n-digit numbers are provided in the array' do
			expect(ArrayStats.new([1, 1000, 200, 300, 3000, 4000, 5500]).freq).to eql({ '1' => 1, '3' => 2, '4' => 4 })
	end

	it 'returns a hash that breaks down how many times n-digit numbers are in the provided array' do
			expect(ArrayStats.new([1, 1000, 200, 300, 3000, 4000, 5500, 5500]).digit_freq).to eql({1 => 1, 200 => 1, 300 => 1, 1000 => 1, 3000 => 1, 4000 => 1, 5500 => 2})
	end
end

