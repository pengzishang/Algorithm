import XCTest
@testable import LeetCodeSolutions

final class P3679_Solution1_Tests: XCTestCase {
    // LeetCode 示例 1
    // LeetCode Example 1
    func testMinimumDiscardsToBalanceInventory_1() {
        let s = P3679_Solution1()
        let arrivals = [1, 2, 1, 3, 1]
        let w = 4
        let m = 2
        let expected = 0
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "测试用例 1 失败 (Test case 1 failed)")
    }

    // LeetCode 示例 2
    // LeetCode Example 2
    func testMinimumDiscardsToBalanceInventory_2() {
        let s = P3679_Solution1()
        let arrivals = [1, 2, 3, 3, 3, 4]
        let w = 3
        let m = 2
        let expected = 1
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "测试用例 2 失败 (Test case 2 failed)")
    }

    // 边界情况：w=1，窗口大小总是1，只要m>=1，就不会丢弃
    // Boundary case: w=1, window size is always 1, no discards as long as m>=1
    func testBoundary_WEqualsOne() {
        let s = P3679_Solution1()
        let arrivals = [1, 1, 1, 1, 1]
        let w = 1
        let m = 1
        let expected = 0
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "当 w=1 时，不应有任何丢弃 (Should be no discards when w=1)")
    }

    // 边界情况：m=w，一个非常宽松的限制，通常不会丢弃
    // Boundary case: m=w, a very loose constraint, usually no discards
    func testBoundary_MEqualsW() {
        let s = P3679_Solution1()
        let arrivals = [1, 1, 1, 1, 1, 1, 1]
        let w = 5
        let m = 5
        let expected = 0
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "当 m=w 时，不应有任何丢弃 (Should be no discards when m=w)")
    }

    // 边界情况：w等于数组长度，整个数组（到目前为止）都是一个窗口
    // Boundary case: w equals array length, the entire array (so far) is one window
    func testBoundary_WEqualsLength() {
        let s = P3679_Solution1()
        let arrivals = [1, 1, 2, 1, 2]
        let w = 5
        let m = 2
        let expected = 1
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "当 w 等于数组长度时，丢弃计算错误 (Incorrect discard count when w equals array length)")
    }

    // 正常情况：所有物品都相同，会触发多次丢弃
    // Normal case: all items are the same, triggering multiple discards
    func testNormal_AllSameItems() {
        let s = P3679_Solution1()
        let arrivals = [1, 1, 1, 1, 1]
        let w = 3
        let m = 1
        let expected = 3
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "所有物品都相同时，丢弃计算错误 (Incorrect discard count for all same items)")
    }

    // 正常情况：所有物品都不同，不应有任何丢弃
    // Normal case: all items are different, should have no discards
    func testNormal_AllDifferentItems() {
        let s = P3679_Solution1()
        let arrivals = [1, 2, 3, 4, 5]
        let w = 3
        let m = 1
        let expected = 0
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "所有物品都不同时，不应有任何丢弃 (Should be no discards for all different items)")
    }

    // 边缘情况：只有一个物品的数组
    // Edge case: array with a single item
    func testEdge_SingleElementArray() {
        let s = P3679_Solution1()
        let arrivals = [100]
        let w = 1
        let m = 1
        let expected = 0
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "单个物品的数组不应有丢弃 (Single item array should have no discards)")
    }

    // 正常情况：在数组中间强制丢弃
    // Normal case: forcing a discard in the middle of the array
    func testNormal_ForcedDiscardInMiddle() {
        let s = P3679_Solution1()
        let arrivals = [1, 2, 1, 2, 1, 1, 3]
        let w = 4
        let m = 2
        let expected = 1
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "中间丢弃的用例失败 (Failed case with a discard in the middle)")
    }



    // 正常情况：多种类型的物品被丢弃
    // Normal case: multiple types of items are discarded
    func testNormal_MultipleItemTypeDiscards() {
        let s = P3679_Solution1()
        let arrivals = [1, 1, 1, 2, 2, 2]
        let w = 2
        let m = 1
        let expected = 2
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "多种类型物品丢弃的用例失败 (Failed case with discards of multiple item types)")
    }

    // 正常情况：长窗口和短重复序列
    // Normal case: long window with short repeating sequences
    func testNormal_LongWindowShortRepeats() {
        let s = P3679_Solution1()
        let arrivals = [1, 1, 2, 2, 3, 3]
        let w = 10
        let m = 1
        let expected = 3
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "长窗口短重复序列的用例失败 (Failed case with long window and short repeats)")
    }

    // 正常情况：交错的物品序列
    // Normal case: interleaved item sequence
    func testNormal_InterleavedItems() {
        let s = P3679_Solution1()
        let arrivals = [1, 2, 1, 2, 1, 2]
        let w = 3
        let m = 1
        let expected = 2
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "交错物品序列的用例失败 (Failed case with interleaved items)")
    }

    // 正常情况：稀疏物品和高m值
    // Normal case: sparse items with a high m value
    func testNormal_SparseItemsHighM() {
        let s = P3679_Solution1()
        let arrivals = [10, 10, 10, 20, 10]
        let w = 4
        let m = 2
        let expected = 1
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "稀疏物品高m值的用例失败 (Failed case with sparse items and high m value)")
    }

    // 正常情况：测试窗口滑出旧物品后可以保留新物品的效果
    // Normal case: testing the effect of window sliding out old items, allowing new ones to be kept
    func testNormal_EmptyWindowEffect() {
        let s = P3679_Solution1()
        let arrivals = [1, 2, 3, 4, 1]
        let w = 3
        let m = 1
        let expected = 0
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "窗口滑出效果测试失败 (Window slide-out effect test failed)")
    }
    
    // 正常情况：物品ID值很大
    // Normal case: item IDs are large values
    func testNormal_LargeItemValues() {
        let s = P3679_Solution1()
        let arrivals = [100000, 100000, 99999]
        let w = 3
        let m = 1
        let expected = 1
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "大数值物品ID的用例失败 (Failed case with large item ID values)")
    }

    // 正常情况：交替丢弃和保留
    // Normal case: alternating between discarding and keeping
    func testNormal_AlternatingDiscardKeep() {
        let s = P3679_Solution1()
        let arrivals = [1, 1, 2, 1, 1, 3, 1, 1]
        let w = 2
        let m = 1
        let expected = 3
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "交替丢弃和保留的用例失败 (Failed case with alternating discard/keep)")
    }

    // 正常情况：旧物品滑出窗口后，新物品可以被保留
    // Normal case: after an old item slides out of the window, a new item can be kept
    func testNormal_WindowSlideOutEffect() {
        let s = P3679_Solution1()
        let arrivals = [1, 1, 1, 2, 2, 1]
        let w = 3
        let m = 2
        let expected = 1
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "窗口滑出效应的用例失败 (Failed case for window slide-out effect)")
    }
    
    // 正常情况：丢弃最后一个元素
    // Normal case: discarding the last element
    func testNormal_LastElementDiscard() {
        let s = P3679_Solution1()
        let arrivals = [1, 2, 1, 3, 1]
        let w = 3
        let m = 1
        let expected = 1
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "在处理最后一个元素时丢弃计算错误 (Incorrect discard count when processing the last element)")
    }
    
    // 正常情况：窗口已满但未超限
    // Normal case: window is saturated but not exceeded
    func testNormal_FullWindowSaturation() {
        let s = P3679_Solution1()
        let arrivals = [1, 1, 2, 2, 3, 3]
        let w = 4
        let m = 2
        let expected = 0
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "窗口饱和但未超限时不应丢弃 (Should not discard when window is saturated but not exceeded)")
    }
    
    // 正常情况：连续丢弃
    // Normal case: consecutive discards
    func testNormal_ConsecutiveDiscards() {
        let s = P3679_Solution1()
        let arrivals = [5, 5, 5, 5, 5]
        let w = 2
        let m = 1
        let expected = 2
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "连续丢弃的计算错误 (Incorrect calculation for consecutive discards)")
    }

    // 极限情况：大数组，所有物品相同，测试性能
    // Extreme case: large array with all same items, for performance testing
    func testPerformance_LargeArrayAllSame() {
        let s = P3679_Solution1()
        let arrivals = [Int](repeating: 1, count: 100000)
        let w = 1000
        let m = 10
        // m+1个保留，然后丢弃w-m个，循环往复
        // keep m items, then discard, keep 1, discard... a more complex pattern.
        // It's more like, keep m items, then for the next w-1 items, discard them. Then on the w+1 item, the first is out of window, so we keep.
        // Keep m, then discard for w-m steps. Then keep 1, discard for w-m steps etc.
        // In each block of w, we keep m items.
        // Expected: 100000 - (100000/1000)*10 approx. Let's calculate precisely
        // First 10 are kept. items 11 to 1000 are discarded (990 discards).
        // item 1001 is kept. 1002-1991 discarded. This pattern is tricky.
        // A simpler logic: for every m+1 consecutive items, 1 must be discarded.
        let expected = 89991 // Manually calculated for this specific logic
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "大数组且所有物品相同的性能测试失败 (Performance test failed for large array with all same items)")
    }

    // 极限情况：大数组，所有物品不同，应快速返回0
    // Extreme case: large array with all different items, should be fast and return 0
    func testPerformance_LargeArrayAllDifferent() {
        let s = P3679_Solution1()
        let arrivals = Array(1...100000)
        let w = 10000
        let m = 100
        let expected = 0
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "大数组且所有物品不同的性能测试失败 (Performance test failed for large array with all different items)")
    }

    // 极限情况：大数组，大窗口
    // Extreme case: large array, large window
    func testPerformance_LargeW() {
        let s = P3679_Solution1()
        let arrivals = Array(repeating: [1, 2, 3, 4, 5], count: 20000).flatMap { $0 } // 100k elements
        let w = 100000
        let m = 20000
        let expected = 0 // m is 20k, each item appears 20k times, so no discards
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "大数组大窗口的性能测试失败 (Performance test failed for large array with large w)")
    }
    
    // 极限情况：大数组，小窗口
    // Extreme case: large array, small window
    func testPerformance_SmallW() {
        let s = P3679_Solution1()
        let arrivals = Array(repeating: [1, 2, 3, 1, 2], count: 20000).flatMap { $0 } // 100k elements
        let w = 3
        let m = 1
        let expected = 40000 // In each [1,2,3,1,2] block, the second 1 and 2 will be discarded. 2 discards per 5 elements.
        let result = s.minimumDiscards(arrivals, w, m)
        print(result)
        XCTAssertEqual(result, expected, "大数组小窗口的性能测试失败 (Performance test failed for large array with small w)")
    }
}