require './array'
require 'pp'

# Get all possibilities for the bin-packing problem without duplicates and empty bins
pp (1..10).to_a.distribute_to_bins(2).to_a.size



