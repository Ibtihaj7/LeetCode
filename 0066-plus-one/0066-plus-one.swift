class Solution {
   func plusOne(_ digits: [Int]) -> [Int] {
        var tmp = digits
        var carry = 1
        
        for i in (0..<tmp.count).reversed() {
            let sum = tmp[i] + carry
            tmp[i] = sum % 10
            carry = sum / 10
        }
        
        if carry > 0 {
            tmp.insert(carry, at: 0)
        }
        
        return tmp
    }

}