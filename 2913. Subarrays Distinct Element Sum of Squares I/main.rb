# @param {Integer[]} nums
# @return {Integer}
def sum_counts(nums)
    sub = [] 
    generate_sub(nums, 0, sub)
    sub.map{|arr| arr.uniq!}
    sub.reduce(0){|res, arr| res + (arr.size() * arr.size())}
end

def generate_sub(nums, i, sub) 
    for i in (i ... nums.size())
        for j in(i ... nums.size())
            sub << nums[i..j]
        end 
    end 
end 