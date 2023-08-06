class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let length = nums.count
        var result = [Int](repeating: 1, count: length)

        var prefixProduct = 1
        var suffixfixProduct = 1

        for i in 0..<length {
            result[i] *= prefixProduct
            prefixProduct *= nums[i]

            result[length - 1 - i] *= suffixfixProduct
            suffixfixProduct *= nums[length - 1 - i]
        }

        return result
    }

}