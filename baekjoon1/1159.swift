let n = Int(readLine()!)!
var arr = [String: Int]()

for _ in 0..<n {
    let input = readLine()!
    arr[String(input.first!), default: 0] += 1
}

let result = arr.filter{$0.value >= 5}.keys.sorted()
print(result.isEmpty ? "PREDAJA" : result.joined())
