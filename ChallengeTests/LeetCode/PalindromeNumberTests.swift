import XCTest
@testable import Challenge

final class PalindromeNumberTests: XCTestCase {
    
    func testIsPalindrome_withPalindromeNumber_shouldReturnTrue() {
        // Arrange
        let sut = LeetCode.PalindromeNumber()
        let input = 121
        
        // Act
        let result = sut.isPalindrome(input)
        
        // Assert
        XCTAssertTrue(result, "\(input) debería ser un número palíndromo.")
    }
    
    func testIsPalindrome_withNegativeNumber_shouldReturnFalse() {
        // Arrange
        let sut = LeetCode.PalindromeNumber()
        let input = -121
        
        // Act
        let result = sut.isPalindrome(input)
        
        // Assert
        XCTAssertFalse(result, "\(input) no debería ser un número palíndromo porque es negativo.")
    }
    
    func testIsPalindrome_withNonPalindromeNumber_shouldReturnFalse() {
        // Arrange
        let sut = LeetCode.PalindromeNumber()
        let input = 123
        
        // Act
        let result = sut.isPalindrome(input)
        
        // Assert
        XCTAssertFalse(result, "\(input) no debería ser un número palíndromo.")
    }
    
    func testIsPalindrome_withSingleDigit_shouldReturnTrue() {
        // Arrange
        let sut = LeetCode.PalindromeNumber()
        let input = 7
        
        // Act
        let result = sut.isPalindrome(input)
        
        // Assert
        XCTAssertTrue(result, "Los números de un solo dígito siempre son palíndromos.")
    }
    
    func testIsPalindrome_withZero_shouldReturnTrue() {
        // Arrange
        let sut = LeetCode.PalindromeNumber()
        let input = 0
        
        // Act
        let result = sut.isPalindrome(input)
        
        // Assert
        XCTAssertTrue(result, "El número 0 es un palíndromo.")
    }
}

