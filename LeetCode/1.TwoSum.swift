extension LeetCode {
    struct TwoSum {
        static func test() {
            print(twoSum([2,7,11,15], 9)) // [0, 1]
            print(twoSum([3,2,4], 6)) // [1, 2]
            print(twoSum([3,3], 6)) // [0, 1]
        }
        static func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
            for (index1, number1) in nums.enumerated() {
                for (index2, number2) in nums.enumerated() where index1 != index2 {
                    if number1 + number2 == target {
                        return [index1, index2]
                    }
                }
            }
            return []
        }
    }
}
