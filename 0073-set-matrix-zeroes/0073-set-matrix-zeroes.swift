class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        guard !matrix.isEmpty else { return }

        let m = matrix.count
        let n = matrix[0].count

        var zeroRows = Set<Int>()
        var zeroCols = Set<Int>()

        for i in 0..<m {
            for j in 0..<n {
                if matrix[i][j] == 0 {
                    zeroRows.insert(i)
                    zeroCols.insert(j)
                }
            }
        }

        for i in 0..<m {
            for j in 0..<n {
                if zeroRows.contains(i) || zeroCols.contains(j) {
                    matrix[i][j] = 0
                }
            }
        }
    }

}