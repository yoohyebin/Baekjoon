//20ms
let n = Int(readLine()!)!
let block = readLine()!.map{String($0)}
var dp = Array(repeating: Int.max/2, count: n)
dp[0] = 0

for i in 0..<n-1 {
    for j in i+1..<n {
        if (block[i] == "B" && block[j] == "O")
        || (block[i] == "O" && block[j] == "J")
        || (block[i] == "J" && block[j] == "B") {
            dp[j] = min(dp[j], dp[i]+((j-i)*(j-i)))
        }
    }
}

print(dp[n-1] == Int.max/2 ? -1 : dp[n-1])
