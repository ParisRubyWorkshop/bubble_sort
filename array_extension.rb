require_relative "bubblesort"

class Array
  def bubble_sort!
    BubbleSort.sort!(self)
  end

  def bubble_sort
    BubbleSort.sort(self)
  end
end


a = [4, 3, 5, 0, 1].bubble_sort!

a = [4, 3, 5, 0, 1]
a.bubble_sort!

p a
