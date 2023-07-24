def fibonacci(n)
    i = 0
    arr = []
    while i < (n + 1)
        if i == 0
            arr.push(0)
        elsif i == 1
            arr.push(1)
        else
            arr.push(arr[i - 1] + arr[i - 2])
        end
        i += 1
    end
    arr
end

def fibonacciRecursive(n)
    if n == 1
        return [0, 1]
    end
    array = fibonacciRecursive(n - 1)
    array.push(array[n -1] + array[n -2])
end

puts fibonacciRecursive(100)