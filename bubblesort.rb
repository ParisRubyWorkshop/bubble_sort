class BubbleSort
  def self.sort!(sequence)
    swaps = 0
    iterations = 0
    i = 0
    while i < sequence.size do
      iterations += 1
      if sequence[i+1].nil?
        break
      elsif sequence[i] > sequence[i+1]
        temp_var = sequence[i]
        sequence[i] = sequence[i+1]
        sequence[i+1] = temp_var
        if i > 0
          i -= 1
        else
          i = 0
        end
        swaps += 1
      else
        i += 1
      end
    end
  end

  def self.sort(sequence)
    sequence_copy = sequence.dup
    self.sort!(sequence_copy)
    return sequence_copy
  end
end

# a = [4, 3, 5, 0, 1]
# BubbleSort.sort(a)
# puts "Final result: #{a}"

# puts "Final result: #{sequence}"
# puts "Swaps: #{swaps}"
# puts "Iterations: #{iterations}"
