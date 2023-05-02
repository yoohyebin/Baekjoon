//8ms
let t = Int(readLine()!)!
var k = 5
var dp = Array(repeating: 0, count: 101)
dp[1] = 1
dp[2] = 1
dp[3] = 1
dp[4] = 2

for _ in 0..<t {
    let n = Int(readLine()!)!
    
    if k <= n {
        for i in k...n {
            dp[i] = dp[i-1] + dp[i-5]
        }
        k = n
    }
    print(dp[n])
}
