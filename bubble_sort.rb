# Bubble Sort - not using the builtin sort method


def bubble_sort(array)
  array.each do 
    swap_count = 0
    array.each_with_index do |a, index|
      break if index == (array.length - 1)
      if a > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        swap_count += 1
      end
    end
    break if swap_count == 0
  end
  puts array
end

array = [4, 3, 78, 2, 0, 2]

bubble_sort(array)