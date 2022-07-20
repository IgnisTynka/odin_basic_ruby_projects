def bubble_sort(data_array)
    for i in 0 ... (data_array.length) do
        for j in 0 ... (data_array.length-i -1) do
            if data_array[j] > data_array[j+1]
                data_array[j], data_array[j+1] = data_array[j+1], data_array[j]
            end
        end
    end
    data_array
end

data_array = [4,3,78,2,0,2]
bubble_sort(data_array)