# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
    candies.map{|c| candies.max-c}.reduce([]){|arr, c| extra_candies >= c ? arr << true : arr << false}
end