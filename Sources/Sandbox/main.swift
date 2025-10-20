import Foundation
import LeetCodeSolutions

//var nums1 = [1,2,3,0,0,0]
//P0088_Solution1().merge(&nums1, 3, [2,5,6], 3)
//print("P0088:", nums1)

//let res = P0001_Solution1().twoSum([2,7,11,15], 9)
//print("P0001:", res)

var num = [1,2,3]
//let res = P0283_Solution3().moveZeroes(&num)
let head = [1,2,3,4,5].toLinkedList()
head?.printList()
let newHead = P3217_Solution1().modifiedList(num,head)
newHead?.printList()



