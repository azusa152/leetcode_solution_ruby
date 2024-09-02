# @param {String[]} details
# @return {Integer}
def count_seniors(details)
    details.count{|ele| ele[11..12].to_i > 60}
end