def min_changes(s)
    cnt = 0
    for i in (0...s.length-1)
        if i%2 == 0
            if s[i] != s[i+1]
                cnt += 1
            end 
        end 
    end 
    cnt
end