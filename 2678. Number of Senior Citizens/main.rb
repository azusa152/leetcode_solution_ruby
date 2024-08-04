# @param {Integer[]} nums
# @param {Integer} n
# @param {Integer} left
# @param {Integer} right
# @return {Integer}
def range_sum(nums, n, left, right)
    (0...n).flat_map { |i| (i...n).map { |j| nums[i..j].sum } }.sort[left-1...right].sum % (10**9 + 7)
end