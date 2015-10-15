class CustomFlattenMethod

  attr_reader :all

  def combine_nested_arrays(arr, all=[])
    arr.each do |item|
      if item.class != Array
        all << item
      else
        combine_nested_arrays(item, all)
      end
    end
    all
  end

end
