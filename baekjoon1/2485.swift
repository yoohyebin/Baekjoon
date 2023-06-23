//60ms
func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a%b)
}

let n = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

arr.sort()

var mid = 0
for i in 0..<n-1 {
    mid = gcd(mid, arr[i+1]-arr[i])
}

print((arr.last!-arr.first!)/mid-n+1)
