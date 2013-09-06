require 'rspec'
require_relative 'array_stats'

describe ArrayStats do 
	it 'should return the largest number in the provided array' do
			expect(ArrayStats.new([1, 1000, 200, 300, 3000, 4000, 5500]).largest).to eql(5500)
	end

	it 'should return the smallest number in the provided array' do
			expect(ArrayStats.new([1, 1000, 200, 300, 3000, 4000, 5500]).smallest).to eql(1)
	end

	it 'should return the average number in the provided array' do
			expect(ArrayStats.new([1, 1000, 200, 300, 3000, 4000, 5500]).average).to eql(2000)
	end

	it 'should return the standard deviation in the provided array' do
			expect(ArrayStats.new([1, 1000, 200, 300, 3000, 4000, 5500]).standard_dev).to eql(2175)
	end

	it 'should return the nth smallest number in the provided array' do
			expect(ArrayStats.new([1, 1000, 200, 300, 3000, 4000, 5500]).nth_number(3)).to eql(1000)
	end

	it 'should return the sum number in the provided array' do
			expect(ArrayStats.new([1, 1000, 200, 300, 3000, 4000, 5500]).sum).to eql(14001)
	end

	it 'should return the product in the provided array' do
			expect(ArrayStats.new([1, 1000, 200, 300, 3000, 4000, 5500]).product).to eql(3960000000000000000)
	end

	it 'should return the difference between the highest and lowest values in the provided array' do
			expect(ArrayStats.new([1, 1000, 200, 300, 3000, 4000, 5500]).difference).to eql(5499)
	end

end

