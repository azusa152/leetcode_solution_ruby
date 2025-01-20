# @param {Integer[]} arr
# @param {Integer[][]} mat
# @return {Integer}
def first_complete_index(arr, mat)
    row = Array.new(mat.size){0}
    col = Array.new(mat[0].size){0}
    row_size = row.size
    col_size = col.size
    hash = {}
    mat.each_with_index do|mati, i|
        mati.each_with_index do|ele,j|
            hash[ele] = [i,j]
        end
    end
    
    arr.each_with_index do|ele, index|
        row[hash[ele][0]] += 1
        return index if row[hash[ele][0]] == col.size 

        col[hash[ele][1]] += 1
        return index if col[hash[ele][1]] == row.size
    end
end