// 8ms
var string_value = readLine()!
var alpabet = Array(repeating: 0, count: 26)

for s in string_value {
    alpabet[Int(exactly: s.asciiValue ?? 0)! - 97] += 1
}

for a in alpabet {print(a, terminator: " ")}
