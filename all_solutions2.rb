require 'pp'

# Get absolutely all possibilities for the bin-packing problem
def recurse(item_index, items, bins)
  if item_index > items.last
    pp bins
    return
  end

  bins.each do |bin|
    bin.push(item_index)
    recurse(item_index+1, items, bins)
    bin.delete(item_index)
  end
end


items = (1..4).to_a
number_of_bins = 3
bins = Array.new(number_of_bins) {[]}

recurse(0, items, bins)