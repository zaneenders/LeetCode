import XCTest

@testable import LeetCode

final class ValidParenthesesTests: XCTestCase {
    func testOne() {
        XCTAssertEqual(isValid("{}"), true)
        XCTAssertEqual(isValid("()[]{}"), true)
        XCTAssertEqual(isValid("(]"), false)
        XCTAssertEqual(isValid("([])"), true)
    }
}
