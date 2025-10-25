import Foundation

// Lightweight pretty printer for common types used in this repo.
// Usage:
//   pp(array)
//   pp(head as Any, label: "LinkedList")
//   pp(tree as Any)

public enum PPStyle { case plain, boxed }

public func pp(_ items: Any?..., label: String? = nil, style: PPStyle = .plain) {
    let ts = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .medium)
    let body = items.map { format($0) }.joined(separator: "\n")
    switch style {
    case .plain:
        if let label { print("[PP] \(label) @\(ts):\n\(body)") } else { print("[PP] @\(ts):\n\(body)") }
    case .boxed:
        let title = label ?? "PrettyPrint"
        let lines = body.split(separator: "\n", omittingEmptySubsequences: false)
        let width = max(title.count + 6, lines.map(\.count).max() ?? 0) + 4
        let top = "┌" + String(repeating: "─", count: width - 2) + "┐"
        let bot = "└" + String(repeating: "─", count: width - 2) + "┘"
        print(top)
        print("│  \(title)  @\(ts)".padding(toLength: width - 1, withPad: " ", startingAt: 0) + "│")
        print("├" + String(repeating: "─", count: width - 2) + "┤")
        for line in lines {
            print("│ \(line)".padding(toLength: width - 1, withPad: " ", startingAt: 0) + "│")
        }
        print(bot)
    }
}

// MARK: - Pretty wrapper to work with standard print()

public struct Pretty<T>: CustomStringConvertible {
    public let value: T
    public let label: String?
    public let style: PPStyle

    public init(_ value: T, label: String? = nil, style: PPStyle = .plain) {
        self.value = value
        self.label = label
        self.style = style
    }

    public var description: String {
        let ts = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .medium)
        let body = format(value)
        switch style {
        case .plain:
            if let label { return "[PP] \(label) @\(ts):\n\(body)" }
            return body
        case .boxed:
            let title = label ?? "PrettyPrint"
            let lines = body.split(separator: "\n", omittingEmptySubsequences: false)
            let width = max(title.count + 6, lines.map(\.count).max() ?? 0) + 4
            let top = "┌" + String(repeating: "─", count: width - 2) + "┐"
            let bot = "└" + String(repeating: "─", count: width - 2) + "┘"
            var out = top + "\n"
            out += "│  \(title)  @\(ts)".padding(toLength: width - 1, withPad: " ", startingAt: 0) + "│\n"
            out += "├" + String(repeating: "─", count: width - 2) + "┤\n"
            for line in lines {
                out += "│ \(line)".padding(toLength: width - 1, withPad: " ", startingAt: 0) + "│\n"
            }
            out += bot
            return out
        }
    }
}

public func pretty<T>(_ value: T, label: String? = nil, style: PPStyle = .plain) -> Pretty<T> {
    Pretty(value, label: label, style: style)
}

// MARK: - Core formatter

private func format(_ value: Any?, depth: Int = 0, maxDepth: Int = 4, maxItems: Int = 50) -> String {
    guard depth <= maxDepth else { return "…" }
    guard let value else { return "nil" }

    // Direct known types
    if let s = value as? String { return "\"\(s)\" (len=\(s.count))" }
    if let c = value as? Character { return "'\(c)'" }
    if let ln = value as? ListNode { return formatListNode(ln) }
    if let tn = value as? TreeNode { return formatTreeNode(tn, maxDepth: 6) }

    // Mirror-based formatting
    let mirror = Mirror(reflecting: value)

    switch mirror.displayStyle {
    case .optional:
        if mirror.children.isEmpty { return "nil" }
        return format(mirror.children.first!.value, depth: depth + 1, maxDepth: maxDepth, maxItems: maxItems)

    case .collection:
        // Array / Set / any collection
        let elements = mirror.children.map(\.value)
        let count = elements.count
        if count == 0 { return "[]" }

        if isMatrix(elements) {
            return formatMatrix(elements, depth: depth, maxDepth: maxDepth, maxItems: maxItems)
        }

        let limited = elements.prefix(maxItems)
        let body = limited.enumerated().map { idx, el in
            "[\(idx)] " + format(el, depth: depth + 1, maxDepth: maxDepth, maxItems: maxItems)
        }.joined(separator: "\n")
        let suffix = count > maxItems ? "\n… (\(count - maxItems) more)" : ""
        return "Array(count=\(count))\n" + body + suffix

    case .dictionary:
        // Dictionary formatting with key sorting by description
        let pairs: [(Any, Any)] = mirror.children.compactMap { child in
            let m = Mirror(reflecting: child.value)
            guard m.displayStyle == .tuple else { return nil }
            var key: Any?; var val: Any?
            for (label, v) in m.children {
                if label == ".0" { key = v } else if label == ".1" { val = v }
            }
            if let k = key, let v = val { return (k, v) } else { return nil }
        }
        let sorted = pairs.sorted { String(describing: $0.0) < String(describing: $1.0) }
        let limited = sorted.prefix(maxItems)
        let header = "Dictionary(count=\(pairs.count))"
        var lines: [String] = []
        for (k, v) in limited {
            lines
                .append("• \(format(k, depth: depth + 1, maxDepth: maxDepth, maxItems: maxItems)) → \(format(v, depth: depth + 1, maxDepth: maxDepth, maxItems: maxItems))")
        }
        let suffix = pairs.count > maxItems ? "\n… (\(pairs.count - maxItems) more)" : ""
        return ([header] + lines).joined(separator: "\n") + suffix

    case .set:
        let elements = mirror.children.map(\.value)
        let sorted = elements.sorted { String(describing: $0) < String(describing: $1) }
        let limited = sorted.prefix(maxItems)
        let body = limited.map { "• " + format($0, depth: depth + 1, maxDepth: maxDepth, maxItems: maxItems) }
            .joined(separator: "\n")
        let suffix = sorted.count > maxItems ? "\n… (\(sorted.count - maxItems) more)" : ""
        return "Set(count=\(sorted.count))\n" + body + suffix

    case .tuple:
        // (a:1, b:2)
        let parts = mirror.children.map { (label: $0.label ?? "_", value: $0.value) }
        let inside = parts
            .map { "\($0.label): \(format($0.value, depth: depth + 1, maxDepth: maxDepth, maxItems: maxItems))" }
            .joined(separator: ", ")
        return "(\(inside))"

    default:
        break
    }

    return String(describing: value)
}

// MARK: - Helpers

private func isMatrix(_ elements: [Any]) -> Bool {
    guard !elements.isEmpty else { return false }
    // Every element is a collection with the same length
    let rows = elements.map { Mirror(reflecting: $0) }.filter { $0.displayStyle == .collection }
    guard rows.count == elements.count else { return false }
    let lengths = rows.map(\.children.count)
    guard let first = lengths.first, first > 0 else { return false }
    return lengths.allSatisfy { $0 == first }
}

private func formatMatrix(_ elements: [Any], depth: Int, maxDepth: Int, maxItems: Int) -> String {
    // elements is [[...]]
    var lines: [String] = []
    let count = elements.count
    let limitedRows = elements.prefix(20)
    for (i, row) in limitedRows.enumerated() {
        let rowMirror = Mirror(reflecting: row)
        let cols = rowMirror.children.map(\.value)
        let colLimited = cols.prefix(30)
        let rowStr = colLimited.map { format($0, depth: depth + 1, maxDepth: maxDepth, maxItems: maxItems) }
            .joined(separator: ", ")
        let suffix = cols.count > 30 ? ", …" : ""
        lines.append("[\(i)] [ \(rowStr)\(suffix) ]")
    }
    let suffix = count > 20 ? "\n… (\(count - 20) more rows)" : ""
    return (["Matrix(\(count)×\(Mirror(reflecting: elements.first!).children.count))"] + lines)
        .joined(separator: "\n") + suffix
}

private func formatListNode(_ head: ListNode?) -> String {
    guard let head else { return "LinkedList(nil)" }
    var values: [String] = []
    var node: ListNode? = head
    var steps = 0
    while let n = node, steps < 100 {
        values.append(String(n.val))
        node = n.next
        steps += 1
    }
    if node != nil { values.append("…") }
    return "LinkedList(count≈\(values.count))\n" + values.joined(separator: " → ") + " → nil"
}

private func formatTreeNode(_ root: TreeNode?, maxDepth: Int) -> String {
    guard let root else { return "Tree(nil)" }
    var result: [String] = []
    var queue: [(TreeNode?, Int)] = [(root, 0)]
    var currentLevel = 0
    var levelVals: [String] = []
    while !queue.isEmpty {
        let (node, depth) = queue.removeFirst()
        if depth != currentLevel {
            result.append("[ " + levelVals.joined(separator: ", ") + " ]")
            levelVals.removeAll()
            currentLevel = depth
            if depth >= maxDepth { break }
        }
        if let n = node {
            levelVals.append(String(n.val))
            if depth + 1 <= maxDepth {
                queue.append((n.left, depth + 1))
                queue.append((n.right, depth + 1))
            }
        } else {
            levelVals.append("nil")
        }
    }
    if !levelVals.isEmpty { result.append("[ " + levelVals.joined(separator: ", ") + " ]") }
    return (["Tree(levels≤\(maxDepth))"] + result).joined(separator: "\n")
}

// MARK: - Make repo types pretty with standard print()

extension ListNode: CustomStringConvertible {
    public var description: String { formatListNode(self) }
}

extension TreeNode: CustomStringConvertible {
    public var description: String { formatTreeNode(self, maxDepth: 6) }
}

// MARK: - Override print to pretty-format common structures

/// Pretty-print overload for this module.
/// It enhances Array/Dictionary/Set/ListNode/TreeNode while leaving scalars as-is.
public func print(_ items: Any..., separator: String = " ", terminator: String = "\n") {
    // If no items, just print newline
    if items.isEmpty {
        Swift.print("", terminator: terminator)
        return
    }

    let pieces: [String] = items.map { value in
        // Handle Optional(nil)
        if case Optional<Any>.none = (value as Any?) {
            return "nil"
        }

        // Prefer special pretty for collections and repo types
        let mirror = Mirror(reflecting: value)

        if value is ListNode || value is TreeNode {
            return format(value)
        }

        if mirror.displayStyle == .collection || mirror.displayStyle == .dictionary || mirror
            .displayStyle == .set || mirror.displayStyle == .tuple || mirror.displayStyle == .optional
        {
            return format(value)
        }

        // Scalars fall back to default description
        return String(describing: value)
    }

    let output = pieces.joined(separator: separator)
    Swift.print(output, terminator: terminator)
}
