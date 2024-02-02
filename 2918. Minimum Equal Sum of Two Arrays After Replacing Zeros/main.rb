# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def min_sum(nums1, nums2)
    cnt1, cnt2 = 0, 0
    sum1, sum2 = 0, 0
    nums1.each do |i|
        if i == 0
            cnt1 += 1
        else
            sum1 += i
        end 
    end 

    nums2.each do |i|
        if i == 0
            cnt2 += 1
        else
            sum2 += i
        end 
    end 

    min1 = sum1 + cnt1 
    min2 = sum2 + cnt2 

    if min1 < min2 && cnt1 == 0 || min1 > min2 && cnt2 == 0
        -1
    else
        [min1, min2].max 
    end 
end