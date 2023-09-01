//16ms
let t = Int(readLine()!)!
var sum = Array(repeating: 0, count: 1001)

for i in 1...1000 {
    sum[i] = sum[i-1]+i
}

for _ in 0..<t {
    let num = Int(readLine()!)!
    var flag = false
   
outLoop: for i in 1...50 {
        for j in 1...50 {
            for k in 1...50 {
                if sum[i]+sum[j]+sum[k] == num {
                    flag = true
                    break outLoop
                }
            }
        }
    }
    
    print(flag ? 1 : 0)
}
