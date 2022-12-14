module MyEnumerable
  def all?
    return unless block_given?

    response = false
    @list.each do |n|
      response = true if yield(n)
    end
    response
  end

  def any?
    return unless block_given?

    any = false
    @list.each do |n|
      any = true if yield(n)
    end
    any
  end

  def filter?
    return unless block_given?

    numbers = []
    @list.each do |n|
      numbers.push(n) if yield(n)
    end
    numbers
  end
end
