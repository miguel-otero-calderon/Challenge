import XCTest
@testable import Challenge

final class LongestCommonPrefixTest: XCTestCase {
    
    func testLongestCommonPrefix_startPrefix_returnsCorrectString() {
        // Arrange
        let sut = LeetCode.LongestCommonPrefix()
        let strs = ["flower","flow","flight"]
        
        // Act
        let prefix = sut.longestCommonPrefix(strs)
        
        // Assert
        XCTAssertEqual(prefix, "fl", "La respuesta es fl.")
    }
    
    func testLongestCommonPrefix_notStartPrefix_returnsEmptyString() {
        // Arrange
        let sut = LeetCode.LongestCommonPrefix()
        let strs = ["reflower","flow","flight"]
        
        // Act
        let prefix = sut.longestCommonPrefix(strs)
        
        // Assert
        XCTAssertEqual(prefix, "", "La respuesta debe ser empty, ya que no es un prefijo común al iniciar todos los strings.")
    }
    
    func testLongestCommonPrefix_returnsEmptyString() {
        // Arrange
        let sut = LeetCode.LongestCommonPrefix()
        let strs =  ["dog","racecar","car"]
        
        // Act
        let prefix = sut.longestCommonPrefix(strs)
        
        // Assert
        XCTAssertEqual(prefix, "", "La respuesta debe ser empty string.")
    }
}
