def min_changes(s)
    s.chars.each_slice(2).reduce(0){|res, arr| res += arr[0] != arr[1]? 1:0}
end