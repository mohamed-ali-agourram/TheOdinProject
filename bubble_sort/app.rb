def bubble_sort(array)
  0.upto(array.length - 2) do |i|
    (i + 1).upto(array.length - 1) do |j|
      if array[i] > array[j]
        c = array[i]
        array[i] = array[j]
        array[j] = c
      end
    end
  end
  array
end

p bubble_sort([5, 0, 2, 3, 1]) #=> [0, 1, 2, 3, 5]
p bubble_sort([4, 3, 78, 2, 0, 2]) #=> [0,2,2,3,4,78]
