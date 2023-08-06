class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var charSet = Set<Character>()
        var maxLength = 0
        var left = 0
        let chars = Array(s)

        for right in 0..<s.count {
            let currentChar = chars[right]
            while charSet.contains(currentChar) {
                charSet.remove(chars[left])
                left += 1
            }

            charSet.insert(currentChar)
            maxLength = max(maxLength, right - left + 1)
        }

        return maxLength
    }

}