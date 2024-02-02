# @param {Integer[]} nums
# @return {Integer[]}
def sort_even_odd(nums)
    min, max = MinHeap.new(), MaxHeap.new()
    nums.each_with_index do|n,i|
        if i%2 == 0
            min.push(n)
        else
            max.push(n)
        end
    end

    res = []
    nums.each_with_index do|n,i|
        if i%2 == 0
            res << min.pop
        else
            res << max.pop
        end
    end

    res 
end