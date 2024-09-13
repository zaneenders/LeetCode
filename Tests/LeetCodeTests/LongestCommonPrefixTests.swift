import XCTest

@testable import LeetCode

final class LongestCommonPrefixTests: XCTestCase {
    func testOne() {
        let strs = ["flower", "flow", "flight"]
        XCTAssertEqual(longestCommonPrefix(strs), "fl")
        XCTAssertEqual(longestCommonPrefix2(strs), "fl")

    }

    func testTwo() {
        let strs = ["dog", "racecar", "car"]
        XCTAssertEqual(longestCommonPrefix(strs), "")
        XCTAssertEqual(longestCommonPrefix2(strs), "")
    }
}
