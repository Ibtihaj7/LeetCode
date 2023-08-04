class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        
        for (i, num) in nums.enumerated() {
            let complement = target - num
            
            if let complementIndex = dict[complement] {
                return [complementIndex, i]
            }
            
            dict[num] = i
        }
        
        return []
    }
}