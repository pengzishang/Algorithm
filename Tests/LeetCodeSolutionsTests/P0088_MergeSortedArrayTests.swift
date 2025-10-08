import XCTest
@testable import LeetCodeSolutions

final class P0088_MergeSortedArrayTests: XCTestCase {
    func test_Merge() {
        let s = P0088_Solution1()
        var a = [1,2,3,0,0,0]
        s.merge(&a, 3, [2,5,6], 3)
        XCTAssertEqual(a, [1,2,2,3,5,6])
    }
}
