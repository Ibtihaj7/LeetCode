class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {

        var grid = Array(repeating: Array(repeating: 0, count: n), count: m)
        
        for i in 0..<m {
            grid[i][0] = 1
        }
        for j in 0..<n {
            grid[0][j] = 1
        }

        for i in 1..<m {
            for j in 1..<n {
                grid[i][j] = grid[i-1][j] + grid[i][j-1]
            }
        }
        return grid[m-1][n-1]
    }

}