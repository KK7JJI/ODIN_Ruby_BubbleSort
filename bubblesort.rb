def bubblesort(arr)

  if arr.length > 1
    for i in (0...arr.length).to_a.reverse
      for j in (0...i)
        if arr[j] > arr[j+1]
          temp = arr[j+1]
          arr[j+1] = arr[j]
          arr[j] = temp
        end
      end
    end
  end
  arr
end

def is_sorted?(arr)
  #check if the array is sorted in ascending order.
  arr.each_cons(2).all? { |left, right| left <= right }

end

def rubysort(arr)
  arr.sort
end

def random_array(n, m)
  Array.new(n) { rand(m) }
end

def time_stamp()
  Process.clock_gettime(Process::CLOCK_MONOTONIC)
end

def sort_array(sort_method, arr)

  case sort_method
    when "bubblesort"
      use_method = method(:bubblesort)
    else
      use_method = method(:rubysort)
  end

  puts ""
  puts "="*80
  if  arr.length > 10
    puts " (sorting array of #{arr.length} elements)"
  else
    puts "   Unsorted: #{arr}"
  end
  puts "  sort test: #{is_sorted?(arr)}"

  start_time = time_stamp()
  arr = use_method.call(arr)
  stop_time = time_stamp()

  puts ""
  puts "     Method: #{sort_method.upcase}"
  if  arr.length > 10
    puts " (sorting array of #{arr.length} elements)"
  else
    puts " sort array: #{arr}"
  end
  puts "  sort test: #{is_sorted?(arr)}"
  puts "="*80
  puts "Execution Time: #{(1000*(stop_time - start_time)).round(5)} ms"
  puts "="*80
  puts ""

end

def main(n, m)

  arr = random_array(n, m)
  sort_array("bubblesort", arr)

  arr = random_array(n, m)
  sort_array("rubysort", arr)

end

# === prevents script from executing unless script is executed directly. ===
if __FILE__ == $PROGRAM_NAME

  n = ARGV[0].to_i
  m = ARGV[1].to_i
  main(n,m)

end