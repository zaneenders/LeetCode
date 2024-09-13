import XCTest

@testable import LeetCode

final class RomanToIntegerTests: XCTestCase {
    func testOne() {
        XCTAssertEqual(romanToInt("III"), 3)
        XCTAssertEqual(romanToInt("LVIII"), 58)
        XCTAssertEqual(romanToInt("MCMXCIV"), 1994)
        XCTAssertEqual(romanToInt2("III"), 3)
        XCTAssertEqual(romanToInt2("LVIII"), 58)
        XCTAssertEqual(romanToInt2("MCMXCIV"), 1994)
    }
}
