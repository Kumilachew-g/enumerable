require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end
end

list = MyList.new(1, 2, 3, 4)

puts 'Test #all?'
puts(list.all? { |n| n < 5 })
puts '|n| n < 5 Should return true'
puts(list.all? { |n| n > 5 })
puts '|n| n > 5 Should return false'

puts 'Test #any?'
puts '|e| e == 2 Should return true'
puts(list.any? { |e| e == 2 })
puts '|e| |e| e == 5 Should return false'
puts(list.any? { |e| e == 5 })

puts 'Test #filter'
puts '|e| e.even? Should return [2,4]'
puts(list.filter?(&:even?))
