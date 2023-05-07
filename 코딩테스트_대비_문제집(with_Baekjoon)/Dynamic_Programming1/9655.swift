//12ms
let n = Int(readLine()!)!
var dp = Array(repeating: 0, count: 1001)

dp[0] = 0
dp[1] = 1
dp[2] = 2
if n >= 3 {
    for i in 3...n {
        dp[i] = min(dp[i-1]+1, dp[i-3]+1)
    }
}
if dp[n]%2 == 1 {
    print("SK")
}else{
    print("CY")
}

//8ms
let n = Int(readLine()!)!
if n%2 == 0 {
    print("CY")
}
else{
    print("SK")
}
