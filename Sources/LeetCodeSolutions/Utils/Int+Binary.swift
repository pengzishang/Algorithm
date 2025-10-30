import Foundation

extension Int {
    /// 返回按指定位宽的二进制字符串（两补码）
    /// - Parameters:
    ///   - bitWidth: 位宽（默认 Int 的平台位宽）
    ///   - group: 每隔多少位插入 "_"（不分组传 0）
    ///   - prefix: 是否添加 "0b" 前缀
    func toBinaryString(bitWidth: Int = MemoryLayout<Int>.size * 8,
                        group: Int = 4,
                        prefix: Bool = false) -> String
    {
        precondition(bitWidth >= 0, "bitWidth must be non-negative")
        if bitWidth == 0 { return prefix ? "0b" : "" }

        var s = String(UInt(bitPattern: self), radix: 2)
        // 补齐/截断为指定位宽
        if s.count < bitWidth {
            s = String(repeating: "0", count: bitWidth - s.count) + s
        } else if s.count > bitWidth {
            s = String(s.suffix(bitWidth))
        }

        // 分组显示
        if group > 0 {
            var grouped = ""
            grouped.reserveCapacity(s.count + s.count / group)
            var count = 0
            for ch in s.reversed() {
                if count > 0, count % group == 0 {
                    grouped.append("_")
                }
                grouped.append(ch)
                count += 1
            }
            s = String(grouped.reversed())
        }

        return prefix ? "0b" + s : s
    }

    /// 直接打印二进制字符串
    func printBinary(bitWidth: Int = MemoryLayout<Int>.size * 8,
                     group: Int = 4,
                     prefix: Bool = false)
    {
        print(toBinaryString(bitWidth: bitWidth, group: group, prefix: prefix))
    }
}
