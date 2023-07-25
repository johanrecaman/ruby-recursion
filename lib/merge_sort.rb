def merge_sort(arr)
    if arr.length < 2
        arr
    else
        mid = arr.length / 2
        leftArr = arr[0...mid]
        rightArr = arr[mid..]  
        leftArr = merge_sort(leftArr)
        rightArr = merge_sort(rightArr)
        merge(leftArr, rightArr)
    end
end

def merge(leftArr, rightArr)
    arr = []
    while leftArr.length > 0 && rightArr.length > 0 
        if leftArr[0] < rightArr[0]
            arr.push(leftArr.shift)
        else
            arr.push(rightArr.shift)
        end
    end
    arr + leftArr + rightArr
end

array = [2, 6, 3, 4, 1, 5]
puts merge_sort(array)