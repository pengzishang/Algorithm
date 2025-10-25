import XCTest
@testable import LeetCodeSolutions

final class P0002_Tests: XCTestCase {
    func test1() {
        let s = P0002_Solution1()
        let l1 = [2,4,3].toLinkedList()
        let l2 = [5,6,4].toLinkedList()
        let result = s.addTwoNumbers(l1, l2)
        let output = result?.printList() ?? []
        print("Test 1 output: \(output)")
        XCTAssertEqual(output, [7,0,8], "Test 1 failed: 342 + 465 should equal 807")
    }
    
    func test2() {
        let s = P0002_Solution1()
        let l1 = [0].toLinkedList()
        let l2 = [0].toLinkedList()
        let result = s.addTwoNumbers(l1, l2)
        let output = result?.printList() ?? []
        print("Test 2 output: \(output)")
        XCTAssertEqual(output, [0], "Test 2 failed: 0 + 0 should equal 0")
    }
    
    func test3() {
        let s = P0002_Solution1()
        let l1 = [9,9,9,9,9,9,9].toLinkedList()
        let l2 = [9,9,9,9].toLinkedList()
        let result = s.addTwoNumbers(l1, l2)
        let output = result?.printList() ?? []
        print("Test 3 output: \(output)")
        XCTAssertEqual(output, [8,9,9,9,0,0,0,1], "Test 3 failed: 9999999 + 9999 should equal 10009998")
    }
    
    func test4() {
        let s = P0002_Solution1()
        let l1 = [1,2,3].toLinkedList()
        let l2 = [4,5,6].toLinkedList()
        let result = s.addTwoNumbers(l1, l2)
        let output = result?.printList() ?? []
        print("Test 4 output: \(output)")
        XCTAssertEqual(output, [5,7,9], "Test 4 failed: 321 + 654 should equal 975")
    }
    
    func test5() {
        let s = P0002_Solution1()
        let l1 = [5].toLinkedList()
        let l2 = [5].toLinkedList()
        let result = s.addTwoNumbers(l1, l2)
        let output = result?.printList() ?? []
        print("Test 5 output: \(output)")
        XCTAssertEqual(output, [0,1], "Test 5 failed: 5 + 5 should equal 10")
    }
    
    func test6() {
        let s = P0002_Solution1()
        let l1 = [9,9,9].toLinkedList()
        let l2 = [1].toLinkedList()
        let result = s.addTwoNumbers(l1, l2)
        let output = result?.printList() ?? []
        print("Test 6 output: \(output)")
        XCTAssertEqual(output, [0,0,0,1], "Test 6 failed: 999 + 1 should equal 1000")
    }
    
    func test7() {
        let s = P0002_Solution1()
        let l1 = [1,8].toLinkedList()
        let l2 = [0].toLinkedList()
        let result = s.addTwoNumbers(l1, l2)
        let output = result?.printList() ?? []
        print("Test 7 output: \(output)")
        XCTAssertEqual(output, [1,8], "Test 7 failed: 81 + 0 should equal 81")
    }
    
    func test8() {
        let s = P0002_Solution1()
        let l1 = [2,4,6,8].toLinkedList()
        let l2 = [1,3,5,7].toLinkedList()
        let result = s.addTwoNumbers(l1, l2)
        let output = result?.printList() ?? []
        print("Test 8 output: \(output)")
        XCTAssertEqual(output, [3,7,1,6,1], "Test 8 failed: 8642 + 7531 should equal 16173")
    }
    
    func test9() {
        let s = P0002_Solution1()
        let l1 = [1].toLinkedList()
        let l2 = [9,9,9,9,9].toLinkedList()
        let result = s.addTwoNumbers(l1, l2)
        let output = result?.printList() ?? []
        print("Test 9 output: \(output)")
        XCTAssertEqual(output, [0,0,0,0,0,1], "Test 9 failed: 1 + 99999 should equal 100000")
    }
    
    func test10() {
        let s = P0002_Solution1()
        let l1 = [7,8,9].toLinkedList()
        let l2 = [3,2,1].toLinkedList()
        let result = s.addTwoNumbers(l1, l2)
        let output = result?.printList() ?? []
        print("Test 10 output: \(output)")
        XCTAssertEqual(output, [0,1,1,1], "Test 10 failed: 987 + 123 should equal 1110")
    }
    
    func test11() {
        let s = P0002_Solution1()
        let l1 = [1,0,0,0,0,0,0,0,0,0,1].toLinkedList()
        let l2 = [5,6,7].toLinkedList()
        let result = s.addTwoNumbers(l1, l2)
        let output = result?.printList() ?? []
        print("Test 11 output: \(output)")
        XCTAssertEqual(output, [6,6,7,0,0,0,0,0,0,0,1], "Test 11 failed: 10000000001 + 765 should equal 10000000766")
    }
    
    func test12() {
        let s = P0002_Solution1()
        let l1 = [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9].toLinkedList()
        let l2 = [1].toLinkedList()
        let result = s.addTwoNumbers(l1, l2)
        let output = result?.printList() ?? []
        print("Test 12 output: \(output)")
        XCTAssertEqual(output, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1], "Test 12 failed: 15个9 + 1 should equal 1000000000000000")
    }
    
    func test13() {
        let s = P0002_Solution1()
        let l1 = [1,2,3,4,5,6,7,8,9].toLinkedList()
        let l2 = [9,8,7,6,5,4,3,2,1].toLinkedList()
        let result = s.addTwoNumbers(l1, l2)
        let output = result?.printList() ?? []
        print("Test 13 output: \(output)")
        XCTAssertEqual(output, [0,1,1,1,1,1,1,1,1,1], "Test 13 failed: 987654321 + 123456789 should equal 1111111110")
    }
    
    func testPerformance() {
        let s = P0002_Solution1()
        var longList1 = [Int]()
        var longList2 = [Int]()
        
        // 创建两个长度为100的链表进行性能测试
        for i in 0..<100 {
            longList1.append(i % 10)
            longList2.append((i + 5) % 10)
        }
        
        let l1 = longList1.toLinkedList()
        let l2 = longList2.toLinkedList()
        
        measure {
            let _ = s.addTwoNumbers(l1, l2)
        }
    }
}