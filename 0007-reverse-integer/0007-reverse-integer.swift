class Solution {
    func reverse(_ x: Int) -> Int {
        var res = 0
        var num = x
        
        while num != 0 {
            let digit = num % 10
            let newResult = res * 10 + digit
            
            if newResult > Int32.max || newResult < Int32.min {
                return 0
            }
            
            res = newResult
            num /= 10
        }
        
        return res
    }

}