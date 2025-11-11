import Foundation
import LeetCodeSolutions

// start from here.
// Step 1
func fetchHTML(_ urlString: String) async throws -> String {
    guard let url = URL(string: urlString) else { throw URLError(.badURL) }
    let (data, _) = try await URLSession.shared.data(from: url)
    guard let html = String(data: data, encoding: .utf8) else { throw URLError(.cannotDecodeRawData) }
    return html
}

private func htmlUnescape(_ s: String) -> String {
    var t = s
    let ents = ["&nbsp;": " ",
                "&lt;": "<",
                "&gt;": ">",
                "&amp;": "&",
                "&quot;": "\"",
                "&#39;": "'"]
    for (k, v) in ents {
        t = t.replacingOccurrences(of: k, with: v)
    }
    return t.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression)
}

// Step 2
private func parsePoints(_ html: String) -> [(x: Int, y: Int, ch: Character)] {
    guard let table = try? NSRegularExpression(pattern: "<table[\\s\\S]*?</table>", options: .caseInsensitive) else {
        return []
    }
    guard let m = table.firstMatch(in: html, range: NSRange(html.startIndex..., in: html)),
          let range = Range(m.range, in: html)
    else {
        return []
    }
    let tab = String(html[range])
    guard let tr = try? NSRegularExpression(pattern: "<tr[\\s\\S]*?</tr>", options: .caseInsensitive) else {
        return []
    }
    let trs = tr.matches(in: tab, range: NSRange(tab.startIndex..., in: tab))
    guard let td = try? NSRegularExpression(pattern: "<t[dh][^>]*>([\\s\\S]*?)</t[dh]>", options: .caseInsensitive)
    else {
        return []
    }
    var pts: [(Int, Int, Character)] = []
    for (i, tm) in trs.enumerated() where i > 0 {
        guard let r = Range(tm.range, in: tab) else {
            continue
        }
        let rowStr = String(tab[r])
        let rowNS = rowStr as NSString
        let matches = td.matches(in: rowStr, range: NSRange(location: 0, length: rowNS.length))
        let cells: [String] = matches.compactMap { m in
            let capRange = m.range(at: 1)
            guard capRange.location != NSNotFound,
                  let swiftRange = Range(capRange, in: rowStr)
            else {
                return nil
            }
            let raw = String(rowStr[swiftRange])
            return htmlUnescape(raw.trimmingCharacters(in: .whitespacesAndNewlines))
        }
        guard cells.count >= 3,
              let x = Int(cells[0]),
              let y = Int(cells[2])
        else {
            continue
        }
        pts.append((x, y, cells[1].first ?? " "))
    }
    return pts
}

// step 3
private func printGrid(_ pts: [(x: Int, y: Int, ch: Character)]) {
    guard !pts.isEmpty else {
        print("No points")
        return
    }
    let maxX = pts.map(\.x).max() ?? 0
    let maxY = pts.map(\.y).max() ?? 0
    var grid = Array(repeating: Array(repeating: Character(" "), count: maxX + 1), count: maxY + 1)
    for p in pts {
        if p.y >= 0, p.x >= 0, p.y < grid.count, p.x < grid[0].count {
            grid[p.y][p.x] = p.ch
        }
    }
    for row in grid {
        print(String(row))
    }
}

private func run() async {
    let url = "https://docs.google.com/document/d/e/2PACX-1vRPzbNQcx5UriHSbZ-9vmsTow_R6RRe7eyAU60xIF9Dlz-vaHiHNO2TKgDi7jy4ZpTpNqM7EvEcfr_p/pub"
    do {
        let html = try await fetchHTML(url)
        let pts = parsePoints(html)
        printGrid(pts)
    } catch {
        print(error)
    }
}

import Dispatch

Task {
    await run()
    exit(0)
}

dispatchMain()
