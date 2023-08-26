//324ms
let n = Int(readLine()!)!
let note = readLine()!.split(separator: " ").map{Int(String($0))!}
let Q = Int(readLine()!)!
var preSum = Array(repeating: 0, count: n+1)

for i in 0..<n-1 {
    if note[i] > note[i+1] {
        preSum[i+1] = 1
    }
}
if n >= 2 {
    for i in 2...n {
        preSum[i] += preSum[i-1]
    }
}

for _ in 0..<Q {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let (x, y) = (input[0], input[1])
    print(preSum[y-1]-preSum[x-1])
}


//292ms
let n = Int(readLine()!)!
let level = readLine()!.split(separator: " ").map { Int(String($0))! }
var cache = [Int](repeating: 0, count: n)

for i in 0..<n - 1 {
    cache[i + 1] = cache[i] + (level[i] > level[i + 1] ? 1 : 0)
}

let q = Int(readLine()!)!
for _ in 0..<q {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x = input[0] - 1, y = input[1] - 1
    print(cache[y] - cache[x])
}
