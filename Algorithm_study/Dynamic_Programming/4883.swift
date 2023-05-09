//184ms
var t = 1
while true{
    let n = Int(readLine()!)!
    if n == 0 {
        break
    }
    
    var dp = [[Int]]()
    for _ in 0..<n {
        dp.append(readLine()!.split(separator: " ").map{Int(String($0))!})
    }
    
    dp[0][0] = Int.max
    dp[0][2] += dp[0][1]
    
    for i in 1..<n {
        dp[i][0] += min(dp[i-1][0], dp[i-1][1])
        dp[i][1] += min(dp[i][0], dp[i-1][0], dp[i-1][1], dp[i-1][2])
        dp[i][2] += min(dp[i][1], dp[i-1][1], dp[i-1][2])
    }
    
    
    print("\(t). \(dp[n-1][1])")
    t += 1
}
