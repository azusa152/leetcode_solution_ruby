# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def find_least_num_of_unique_ints(arr, t)
    hash = Hash.new(0)
    arr.each do|a|
        hash[a] += 1
    end

    hash.sort_by{|k,v|v}.each do |k,v|
        if t >= v
            t = t - v
            hash[k] = 0
        else
            break
        end
    end

    hash.select{|k,v| v >0}.count
end