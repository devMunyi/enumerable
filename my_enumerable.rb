module MyEnumerable
  # filter method
  def filter(&block)
    result = []
    each do |element|
      result << element if block.call(element) == true
    end
    result
  end

  # any method
  def any?(&block)
    each do |element|
      return true if block.call(element) == true
      # if block.call(element) == true
      #   return true
      # end
    end
    false
  end

  # all method
  def all?(&block)
    each do |element|
      return false if block.call(element) == false
      # if block.call(element) == false
      #   return false
      # end
    end
    true
  end
end
