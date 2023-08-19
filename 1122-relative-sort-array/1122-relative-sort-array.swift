class Solution {
    func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
        var hash = [Int:Int]()
        for item in arr1{
            hash[item, default:0] += 1
        }
        
        var res = [Int]()
        for num in arr2{
            if let arr = hash[num]{
                res.append(contentsOf: Array(repeating:num, count:arr))
                hash[num] = nil
            }
        }
        let keys = hash.keys.sorted()
        for num in keys {
            if let frequency = hash[num] {
                res.append(contentsOf: Array(repeating: num, count: frequency))
            }
        }

        return res
    }
}