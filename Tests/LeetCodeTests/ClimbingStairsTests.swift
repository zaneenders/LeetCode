import XCTest

@testable import LeetCode

final class ClimbingStairsTests: XCTestCase {
    func testOne() {
        XCTAssertEqual(climbStairs(2), 2)
        XCTAssertEqual(climbStairs(3), 3)
    }
}
