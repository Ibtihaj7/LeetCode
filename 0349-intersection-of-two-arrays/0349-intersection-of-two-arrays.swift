class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let set1 = Set(nums1)
        let set2 = Set(nums2)
        var intersectionSet = Set<Int>()

        for num in set1 {
            if set2.contains(num) {
                intersectionSet.insert(num)
            }
        }

        return Array(intersectionSet)
    }
}