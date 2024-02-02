# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def sum_indices_with_k_set_bits(nums, k)
    res = 0
    0.upto(nums.size()-1) do |i|
       if i.to_s(2).to_i.digits.sum == k
            res += nums[i]
        end
    end
    res
end