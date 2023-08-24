class Solution {
    func countPrimes(_ n: Int) -> Int {
        guard n > 2 else { return 0 }

        var isPrime = [Bool](repeating: true, count: n)
        isPrime[0] = false
        isPrime[1] = false

        var count = 0
        for i in 2..<n {
            if isPrime[i] {
                count += 1
                var j = i * i
                while j < n {
                    isPrime[j] = false
                    j += i
                }
            }
        }
        
        return count
    }
}