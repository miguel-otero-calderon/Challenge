extension LeetCode {
    struct TwoSum {
        func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
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
