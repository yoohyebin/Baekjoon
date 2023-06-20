//64ms
let n = Int(readLine()!)!
var arr = [Int]()
var result = 0

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}
arr.sort(by: >)

for i in 0..<n {
    let current = arr[i]*(i+1)
    result = max(result, current)
}

print(result)
