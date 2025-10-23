import Foundation
import LeetCodeSolutions

//var nums1 = [1,2,3,0,0,0]
//P0088_Solution1().merge(&nums1, 3, [2,5,6], 3)
//print("P0088:", nums1)

//let res = P0001_Solution1().twoSum([2,7,11,15], 9)
//print("P0001:", res)

// var num = [1,2,3]
// //let res = P0283_Solution3().moveZeroes(&num)
// let head = [5,2,13,3,8].toLinkedList()
// head?.printList()
// let newHead = P2487_Solution2().removeNodes(head)
// newHead?.printList()

let nums1 = [4,1,2], nums2 = [1,3,4,2]
let rArray = P496_Solution2().nextGreaterElement(nums1, nums2)
print(rArray)
// [-1,3,-1]
