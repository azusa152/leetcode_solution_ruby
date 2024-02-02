# @param {Integer[][]} grid
# @return {Integer}
def closed_island(grid)
    0.upto(grid.size()-1) do|x|
        if grid[x][0] == 0
            dfs(grid, [x, 0], 2)
        end
        if grid[x][grid[0].size()-1] == 0
            dfs(grid, [x, grid[0].size()-1], 2)
        end
    end

    0.upto(grid[0].size()-1) do|y|
        if grid[0][y] == 0
            dfs(grid, [0, y], 2)
        end
        if grid[grid.size()-1][y] == 0
            dfs(grid, [grid.size()-1, y], 2)
        end
    end

    res = 0
    0.upto(grid.size()-1) do|x|
        0.upto(grid[0].size()-1) do|y|
            if grid[x][y] == 0
                res += 1
                dfs(grid, [x,y], -1)
            end
        end
    end
    res

end

def dfs(grid, node, tar)
    if node[0] < 0 || node[0] >= grid.size || node[1] < 0 || node[1] >= grid[0].size
        return
    end

    if grid[node[0]][node[1]] == 0
        grid[node[0]][node[1]] = tar
        dfs(grid, [node[0]-1, node[1]], tar)
        dfs(grid, [node[0]+1, node[1]], tar)
        dfs(grid, [node[0], node[1]+1], tar)
        dfs(grid, [node[0], node[1]-1], tar)
    end
end