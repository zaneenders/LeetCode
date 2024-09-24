import XCTest

@testable import LeetCode

final class InterviewTests: XCTestCase {
    func testOne() {
        let data2: [[Int]] = [
            [5, 6, 10, 1, 5, 10],
            [54, 25, 29, 5, 4, 32],
            [23, 2, 1, 13, 26, 8],
            [10, 0, 2, 12, 14, 29],
        ]
        let data1: [[Int]] = [
            [0, 4, 3],
            [5, 8, 9],
            [5, 9, 9],
        ]
        XCTAssertEqual(paths(grid: data1), 22)
        XCTAssertEqual(paths(grid: data2), 96)
    }
}
