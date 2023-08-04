class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }
        
        var num = x , reversed = 0
        
        while num > 0 {
            reversed = (reversed * 10) + (num % 10)
            num /= 10
        }
        return x == reversed
    }
}