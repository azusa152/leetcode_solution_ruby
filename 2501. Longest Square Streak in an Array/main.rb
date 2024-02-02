# @param {Integer[]} nums
# @return {Integer}
def longest_square_streak(nums)
    max = -1
    hash = {}
    nums.each do|n|
        hash[n] = 1
    end

    nums.each do|n|
        if hash[n*n] == 1
            cnt = 1
            while !hash[n * n].nil?
                n = n * n
                cnt += 1
            end
            max = [max, cnt].max
        end
    end
    
    max
        
end