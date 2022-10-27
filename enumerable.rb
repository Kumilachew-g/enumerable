module MyEnumerable
  def all?(&block)
    result = true
    each do |value|
      result = false unless block.call(value)
    end
    result
  end
end
