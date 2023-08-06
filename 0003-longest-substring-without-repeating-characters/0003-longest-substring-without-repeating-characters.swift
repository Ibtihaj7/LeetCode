class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var charIndexMap = [Character: Int]()
        var maxLength = 0
        var left = 0
        let chars = Array(s)

        for right in 0..<s.count {
            let currentChar = chars[right]
            if let prevIndex = charIndexMap[currentChar], prevIndex >= left {
                left = prevIndex + 1
            }

            charIndexMap[currentChar] = right
            maxLength = max(maxLength, right - left + 1)
        }

        return maxLength
    }

}