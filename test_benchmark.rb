require "benchmark"
require "./bucket_sort.rb"
require "./heap_sort.rb"
require "./quick_sort.rb"
require "./insertion_sort.rb"



test_array = [14, 5, 16, 12, 1, 19, 23, 11, -2, -1, 
 			   0, 22, 51, 17, 6, -31, 2, -100, 54]


puts Benchmark.measure { HeapSort.sort(test_array) }

puts Benchmark.measure { QuickSort.sort(test_array) }

puts Benchmark.measure { BucketSort.sort(test_array) }