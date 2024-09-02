# @param {Integer[]} chalk
# @param {Integer} k
# @return {Integer}
def chalk_replacer(chalk, k)
  arr = [chalk[0]]
  chalk[1..-1].each do|c|
      arr << arr[-1] + c
  end
  k = k % arr[-1]

  l, r = 0, chalk.size() - 1
  while l < r 
      mid = (l+r) / 2
      if arr[mid] > k
          r = mid
      else
          l = mid + 1
      end
  end
  r

end