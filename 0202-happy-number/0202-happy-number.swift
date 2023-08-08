class Solution {
    func isHappy(_ n: Int) -> Bool {
        var set = Set<Int>()
        var n = n
        
        while n != 1 && !set.contains(n) {
            set.insert(n)
            n = getSumSqueres(n)
        }
        return n == 1 
    }
    
    func getSumSqueres(_ n:Int) -> Int{
        var sum = 0
        var n = n
        
        while n > 0 {
            let digit = n % 10
            sum += digit*digit
            n /= 10
        }
        return sum
    }
}