class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        let bracketsMap: [Character: Character] = [")": "(", "}": "{", "]": "["]

        for char in s {
            if char == "(" || char == "{" || char == "[" {
                stack.append(char)
            } else if char == ")" || char == "}" || char == "]" {
                if stack.isEmpty || stack.last != bracketsMap[char] {
                    return false
                }
                stack.removeLast()
            }
        }

        return stack.isEmpty
    }

}