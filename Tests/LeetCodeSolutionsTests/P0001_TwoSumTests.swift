import XCTest
@testable import LeetCodeSolutions

final class P0001_TwoSumTests: XCTestCase {
    func test_TwoSum() {
        let s = P0001_Solution1()
        XCTAssertEqual(s.twoSum([2,7,11,15], 9), [0,1])
        XCTAssertEqual(s.twoSum([3,2,4], 6), [1,2])
    }
}
