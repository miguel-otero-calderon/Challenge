extension LeetCode {
    struct PalindromeNumber {
        static func test() {
            print(isPalindrome(121)) // true
            print(isPalindrome(-121)) // false
            print(isPalindrome(10)) // false
        }
        static func isPalindrome(_ x: Int) -> Bool {
            if x < 0 {
                return false
            }
            let str = String(x)
            return str == String(str.reversed())
        }
    }
}
