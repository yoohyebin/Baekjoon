//8ms
let stringValue = Array(readLine()!)
let n = stringValue.count
var flag = true

for i in 0..<n/2 {
    if stringValue[i] != stringValue[n-i-1] {
        flag = false
        break
    }
}
print(flag ? 1 : 0)
