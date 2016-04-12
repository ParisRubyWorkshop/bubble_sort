sequence = [5, 4, 3, 2, 1, 0]
swaps = 0
iterations = 0
# Your Code Here
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


puts "Final result: #{sequence}"
puts "Swaps: #{swaps}"
puts "Iterations: #{iterations}"
