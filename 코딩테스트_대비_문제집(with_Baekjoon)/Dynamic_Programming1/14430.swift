//32ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (input[0], input[1])
var arr = [[Int]]()
var dp = Array(repeating: Array(repeating: 0, count: m+1), count: n+1)

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 1...n {
    for j in 1...m {
        dp[i][j] = max(dp[i-1][j], dp[i][j-1]) + arr[i-1][j-1]
    }
}
print(dp[n][m])
