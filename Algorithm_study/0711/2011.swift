//8ms
var code = [0]+readLine()!.map{Int(String($0))!}
let n = code.count-1
var dp = Array(repeating: 0, count: code.count)
dp[0] = 1

for idx in 1...n{
    if code[idx] > 0{
        dp[idx] = (dp[idx] + dp[idx-1]) % 1000000
    }
    if idx==1 || code[idx-1]==0{
        continue
    }
    let temp = code[idx-1]*10 + code[idx]
    if 9<temp && temp<27{
        dp[idx] = (dp[idx] + dp[idx-2]) % 1000000
    }
}
print(dp[n])
