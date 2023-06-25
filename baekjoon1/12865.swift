//312ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0], k = input[1]
var dp = Array(repeating: Array(repeating: 0, count: 100001), count: 101)
var arr = [[Int]]()

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 1...n {
    for j in 1...k {
        if (arr[i-1][0] > j){
            dp[i][j] = dp[i - 1][j]
        } else{
            dp[i][j] = max(dp[i - 1][j], dp[i - 1][j - arr[i-1][0]] + arr[i-1][1])
        }
    }
}

print(dp[n][k])

//20ms
let NK = readLine()!.split(separator: " ").map { Int($0)! }
let N = NK[0],K = NK[1]
var dp = Array(repeating: 0, count: K+1)

for _ in 0..<N {
    let WV = readLine()!.split(separator: " ").map { Int($0)! }
    let W = WV[0],V = WV[1]
    
    for i in stride(from: K - W, through: 0, by: -1) {
        if (i == 0 || dp[i] > 0) && dp[i] + V > dp[i+W] {
            dp[i+W] = dp[i] + V
        }
    }
}
print(dp.max()!)
