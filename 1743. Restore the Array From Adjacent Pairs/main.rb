# @param {Integer[][]} adjacent_pairs
# @return {Integer[]}
def restore_array(ap)
    hash = Hash.new { |h, k| h[k] = [] }
    ap.each do |a, b|
        hash[a] << b
        hash[b] << a
    end

    start = hash.keys.find { |k| hash[k].size == 1 }
    ans = [start]
    while ans.size < ap.size + 1
        crr = ans[-1]
        hash[crr].each do|t|
            if t != ans[-2]
                ans << t
                break
            end 
        end 
    end

    ans
end