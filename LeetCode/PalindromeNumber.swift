extension LeetCode {
    struct PalindromeNumber {
        func isPalindrome(_ x: Int) -> Bool {
            if x < 0 {
                return false
            }
            let str = String(x)
            return str == String(str.reversed())
        }
    }
}
