
def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |a, b|
    if a == b
      0
    elsif a > b
      -1
    elsif a < b
      1
    end
  end
end

def sort_array_char_count(array)
  array.sort do |a, b|
    if a == b
      0
    elsif a.size < b.size
      -1
    elsif a.size > b.size
      1
    end
  end
end

def swap_elements(array)
  temp = array[2]
  array[2] = array[1]
  array[1] = temp
  array
end

def reverse_array(array)
  newArray = []
  array.each do |element|
    newArray.unshift(element)
  end
  newArray
end

def kesha_maker(array)
  newArray = []
  array.each do |element|
    element[2] = "$"
    newArray.push(element)
  end
  newArray
end

def find_a(array)
  array.each do |element|
    if element.start_with?("a")
      true
    end
  end
  false
end

def sum_array(array)
  array.inject { |sum, n| sum + n }
end

def add_s(array)
  array.each_with_index do |text, index|
    if index != 1
      array = text << "s"
    end
  end
end
