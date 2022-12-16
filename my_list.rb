require_relative './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list_arg)
    @list = list_arg.flatten
  end

  def each(&block)
    @list.each(&block)
    self
  end
end

# Create our list
list = MyList.new(1, 2, 3, 4)
# <MyList: @list=[1, 2, 3, 4]>

# Test #all?
p list.all? { |e| e < 5 }
# => true
list.all? { |e| e > 5 }
# => false

# Test #any?
list.any? { |e| e == 2 }
# => true
list.any? { |e| e == 5 }
# => false

# Test #filter
list.filter { |e| e.even? }
# => [2, 4]
