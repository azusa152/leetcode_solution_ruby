# @param {Integer[]} spells
# @param {Integer[]} potions
# @param {Integer} success
# @return {Integer[]}
def successful_pairs(spells, potions, success)
    sorted = potions.sort
    sorted << sorted.max + 1
    res = []
    
    spells.each do|s|
        l, r = 0, sorted.length - 1
        while l < r
            mid = l + (r-l)/2
            if validate(mid, s, success, sorted)
                r = mid
            else
                l = mid + 1
            end
        end
        if potions.length - l < 0
            res << 0
        else
            res << potions.length - l
        end
    end
    res
end

def validate(mid, s, success, sorted)
    sorted[mid] * s >= success
end