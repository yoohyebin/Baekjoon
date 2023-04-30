//72ms
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var arr = [[Int]]()
var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: m+1), count: n+1)

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 1...n {
    for j in 1...m {
        dp[i][j] = arr[i-1][j-1] + dp[i-1][j] + dp[i][j-1] - dp[i-1][j-1]
    }
}

let k = Int(readLine()!)!

for _ in 0..<k {
    let ijxy = readLine()!.split(separator: " ").map{Int(String($0))!}
    let i = ijxy[0], j = ijxy[1], x = ijxy[2], y = ijxy[3]
    
    print(dp[x][y] - dp[x][j-1] - dp[i-1][y] + dp[i-1][j-1])
}
