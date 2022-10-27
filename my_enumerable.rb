module MyEnumerable
  def all?(&block)
    result = true
    each do |value|
      result = false unless block.call(value)
    end
    result
  end

  def any?(&block)
    result = false
    each do |value|
      result = true if block.call(value)
    end
    result
  end

  def filter(&block)
    result = []
    each do |value|
      result << value if block.call(value)
    end
    result
  end
end
