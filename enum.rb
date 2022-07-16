module MyEnumerable
  # The method returns true if the block never returns false or nil.
  def all?
    return true unless block_given?

    each do |item|
      return false unless yield item
    end
    true
  end

  # The method returns true if the block ever returns true.
  def any?
    return true unless block_given?

    each do |item|
      return true if yield item
    end
    false
  end

  # Returns an array containing all elements of enum for which the given block returns a true value.
  def filter
    result = []
    each do |item|
      result.push(item) if yield item
    end
    result
  end
end
