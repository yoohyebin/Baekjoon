//164ms
let n = Int(readLine()!)!
var dp = Array(repeating: 0, count: 50005)

for i in 1...n {
    dp[i] = dp[i-1] + 1
    
    for j in 1...i {
        if j*j > i {break}
        dp[i] = min(dp[i], dp[i-(j*j)]+1)
    }
}

print(dp[n])


//12ms
import Foundation

let target = Int(readLine()!)!
var memo = [Int]()
memo.append(0)
for i in 1...Int(sqrt(50000.0)) + 1 {
    memo.append(i * i)
}
var flag = false
loop: for j in 0..<memo.count - 2 {
    for k in j..<memo.count - 1 {
        for l in k..<memo.count {
                if memo[j] + memo[k] + memo[l] == target {
                    print([memo[j], memo[k], memo[l]].filter { $0 != 0 }.count)
                    flag = true
                    break loop
                }
            }
        }
    }
if flag == false {
    print("4")
}
