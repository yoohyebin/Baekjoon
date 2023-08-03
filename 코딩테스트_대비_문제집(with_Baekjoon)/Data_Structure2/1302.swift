//8ms
let n = Int(readLine()!)!
var dict = [String: Int]()

for _ in 0..<n {
    dict[readLine()!, default: 0] += 1
}

let maxValue = dict.values.max() ?? 0

print(dict.filter{$0.value == maxValue}.keys.sorted().first ?? "")
