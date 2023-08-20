//48ms
let s1 = readLine()!.map{String($0)}
let s2 = readLine()!.map{String($0)}
var dp = Array(repeating: Array(repeating: 0, count: s2.count + 1), count: s1.count + 1)

for i in 1...s1.count {
    for j in 1...s2.count {
        if s1[i - 1] == s2[j - 1]{
            dp[i][j] = dp[i - 1][j - 1] + 1
        }else{
            dp[i][j] = max(dp[i - 1][j], dp[i][j - 1])
        }
    }
}

print(dp[s1.count][s2.count])

//16ms
let a: [String] = readLine()!.map { String($0) }
let b: [String] = readLine()!.map { String($0) }

var dp: [Int] = Array(repeating: 0, count: a.count)

for i in 0..<b.count {
    var count: Int = 0
    
    for j in 0..<a.count {
        if count < dp[j] {
           // 동일한 글자 여부 확인보다 먼저, 누적된 값이 dp 값보다 작은지 확인.
            count = dp[j]
        } else if b[i] == a[j] {
            dp[j] = count + 1
        }
    }
}

print(dp.max()!)
