final class P1486_Solution2 {
//    思路
//    px(l,r) = px(0,r) ⊕ px(0,l−1), px(l,r)
//    解题过程
//    公式1:
//            px(l,r) = px(0,r) ⊕ px(0,l−1), px(l,r)
//    表示计算连续区间的异或结果 其中 r > l
//
//    即:
//    从l到r的连续整数的异或值
//    ﻿
//    符合:
//    从0到r的所有数的异或值
//    异或
//    0到l-1的所有数的异或值
//    ﻿
//    那么这个题我们的思路就是要先把他们化成连续的数l r,
//    即简化为:
//         这个题即为 start/2 - 1 到start/2 + (n - 1)的异或,  最后一位e单独处理
//    ﻿
//    先单独处理最后一位e,
//    异或有一个规律:
//    如果全是偶: 偶数的尾数都是0, 自然的, e就是0
//    如果全是奇数: 那么和奇数的个数有关, 奇数的尾数都是1, 奇数的个数为偶数, 那么e=0, 如果个数为奇数, 那么e = 1
//    ﻿
//    然后处理px(start/2,start/2 + (n - 1)), 他的结果就是px(0, start/2 - 1) ⊕ px(0, start/2 + (n - 1))
//    px的结果与他是否是4的倍数有关
//    公式2:
//    px(0, x) =
//            if x % 4 == 0 resutl = x
//            if x % 4 == 1 result = 1
//            if x % 4 == 2 resutl = x + 1
//            if x % 4 == 3 resutl = 0
//    ﻿
//    那么就看里面的值和4的关系了
//    得到px(0, start/2 - 1) ⊕ px(0, start/2 + (n - 1))这个值
//    然后左移一位, 加上e就哦了
//

//    作者：I am back
//    链接：https://leetcode.cn/problems/xor-operation-in-an-array/solutions/3818950/tong-wang-o1zui-zhong-yao-de-liang-ge-go-u5i2/
//    来源：力扣（LeetCode）
//    著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

    func xorOperation(_ n: Int, _ start: Int) -> Int {
        var e: Int {
            if start.isMultiple(of: 2) {
                0
            } else {
                if n.isMultiple(of: 2) {
                    0
                } else {
                    1
                }
            }
        }

        let s = start >> 1
        let ps = px(x: s - 1)
        let pn = px(x: s + n - 1)
        let result = (ps ^ pn) << 1 + e

        // start from 0
        func px(x: Int) -> Int {
            switch x % 4 {
            case 0:
                x
            case 1:
                1
            case 2:
                x + 1
            default: // 3
                0
            }
        }

        return result
    }
}
