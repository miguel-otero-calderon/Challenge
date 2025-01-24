import XCTest
@testable import Challenge

final class TwoSumTests: XCTestCase {
    
    func testTwoSum_withValuesPair_returnsCorrectIndices() {
        // Arrange
        let sut = LeetCode.TwoSum()
        let nums = [2, 7, 11, 15]
        let target = 9
        
        // Act
        let result = sut.twoSum(nums, target)
        
        // Assert
        XCTAssertEqual(result, [0, 1], "Los indices no son correctos, deberian ser [0,1] ya que nums[0] +  num[1] = 9")
        
    }
    
    func testTwoSum_withNoValidPair_returnsEmptyArray() {
        // Arrange
        let sut = LeetCode.TwoSum()
        let nums = [1, 2, 3, 4]
        let target = 10
        
        // Act
        let result = sut.twoSum(nums, target)
        
        // Assert
        XCTAssertEqual(result, [], "Debe retornar [], por que no hay sumando para sumar 10.")
    }
}
