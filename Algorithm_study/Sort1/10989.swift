//4724ms
var N = Int(readLine()!)!
var arr = Array(repeating: 0, count: 10001)
var re = ""

for _ in 0..<N {
    arr[Int(readLine()!)!] += 1
}

for i in 0..<10001 {
    if arr[i] != 0 {
        re += String(repeating: "\(i)\n", count: arr[i])
    }
}
print(re)
