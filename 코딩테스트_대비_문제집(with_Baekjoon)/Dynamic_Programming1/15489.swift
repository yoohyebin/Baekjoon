//20ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (r, c, w) = (input[0], input[1], input[2])
var dp = Array(repeating: Array(repeating: 0, count: 31), count: 31)
var result = 0

dp[1][1] = 1

for i in 2...(r+w) {
    for j in 1...i {
        dp[i][j] = dp[i-1][j-1] + dp[i-1][j]
    }
}

for i in 0..<w {
    for j in 0...i {
        result += dp[r+i][c+j]
    }
}

print(result)
