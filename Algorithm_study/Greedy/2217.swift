//64ms
let n = Int(readLine()!)!
var arr = [Int](), maxValue = 0

for _ in 0..<n{
    arr.append(Int(readLine()!)!)
}
arr.sort(by: >)
for i in 0..<n {
    arr[i] = arr[i]*(i+1)
    maxValue = max(maxValue, arr[i])
}

print(maxValue)
