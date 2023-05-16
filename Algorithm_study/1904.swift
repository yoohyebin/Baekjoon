//36ms
let n  = Int(readLine()!)!
var dp = [0,1,2]
   
if n > 2{
    for i in 3...n
    {
        dp.append((dp[i-1] + dp[i-2]) % 15746 )
    }
}
print(dp[n])

//12ms
let n = Int(readLine()!)!
var a = 1
var b = 2

if n == 1 || n == 2 {
    b = n
}
else {
    for _ in 2..<n {
        let tmp = a
        a = b
        b = (tmp+b)%15746
    }
}
print(b)
