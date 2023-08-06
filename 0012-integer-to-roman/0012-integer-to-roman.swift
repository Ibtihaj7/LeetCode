class Solution {
   func intToRoman(_ num: Int) -> String {
        let symbolsAndValues: [(String, Int)] = [
            ("M", 1000), ("CM", 900), ("D", 500), ("CD", 400),
            ("C", 100), ("XC", 90), ("L", 50), ("XL", 40),
            ("X", 10), ("IX", 9), ("V", 5), ("IV", 4), ("I", 1)
        ]

        var result = ""
        var num = num

        for (symbol, value) in symbolsAndValues {
            while num >= value {
                num -= value
                result += symbol
            }
        }

        return result
    }

}