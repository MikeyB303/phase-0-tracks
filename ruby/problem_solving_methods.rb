#5.6 Mandatory Pairing: Solving Problems with Data Structures

#Release 0
arr = [30, 76, 29, 18]
def search_array(array, number)
  counter = 0
  result = ""
  until counter == 1
    if number == array[0]
      result = 0
      counter = 1
    elsif number == array [1]
      result = 1
      counter = 1
    elsif number == array [2]
      result = 2
      counter = 1
    elsif number == array[3]
      result = 3
      counter = 1
    else
      result = nil
    end
  end
  p result
end
search_array(arr, 20)

#Release 1
def fib(index)
  fibonacci = [0, 1]
  until fibonacci.length == (index)
    fibonacci.push((fibonacci[-1])+(fibonacci[-2]))
  end
  p fibonacci
end

fib(4)

fib(100)

#Release 2
#