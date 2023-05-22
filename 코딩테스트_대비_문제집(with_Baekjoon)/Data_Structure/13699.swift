//12ms
let n = Int(readLine()!)!
var t = Array(repeating: 0, count: 36)
t[0] = 1
t[1] = 1
t[2] = 2
t[3] = 5

if n > 3 {
    for i in 4...n {
        for j in 0..<i {
            t[i] += t[j]*t[i-j-1]
        }
    }
}
print(t[n])
