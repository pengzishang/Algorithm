//
//  File.swift
//  LeetCodeSolutions
//
//  Created by Eric Peng on 2025-10-23.
//

import XCTest
@testable import LeetCodeSolutions

final class P496_Tests: XCTestCase {
    func test1() {
        let s = P496_Solution1()
        let nums1 = [4,1,2], nums2 = [1,3,4,2]
        let arr = s.nextGreaterElement(nums1, nums2)
        XCTAssertEqual(arr, [-1,3,-1])
    }
    func test2() {
        let s = P496_Solution2()
        let nums1 = [4,1,2], nums2 = [1,3,4,2]
        let arr = s.nextGreaterElement(nums1, nums2)
        XCTAssertEqual(arr, [-1,3,-1])
    }
}
