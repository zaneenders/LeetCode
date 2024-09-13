import XCTest

@testable import LeetCode

final class IsPalindromeTests: XCTestCase {
    func testOne() {
        XCTAssertEqual(isPalindrome(121), true)
        XCTAssertEqual(isPalindrome(-121), false)
        XCTAssertEqual(isPalindrome(10), false)
        XCTAssertEqual(isPalindrome2(121), true)
        XCTAssertEqual(isPalindrome2(-121), false)
        XCTAssertEqual(isPalindrome2(10), false)
    }
}
