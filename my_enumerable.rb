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
      if block.call(element) == true
        return true
      end
    end
    return false
  end

  # all method
  def all?(&block)
    each do |element|
      if block.call(element) == false
        return false
      end
    end
    return true
  end
end
