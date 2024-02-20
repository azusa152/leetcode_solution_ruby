# @param {String[]} words
# @return {Integer}
def count_prefix_suffix_pairs(words)
    cnt = 0
    if words.size == 1
        return 0
    end
    
    for i in 0 ... words.size do
        for j in i+1 ... words.size do
            if check(words[i], words[j])
                cnt += 1 
            end
        end
    end
    cnt
end

def check(s1, s2)
    if s1.size > s2.size
        false
    elsif s1.size == s2.size
        s1 == s2
    else
        s1 == s2[0...s1.size] && s1 == s2[-s1.size..-1]
    end
end