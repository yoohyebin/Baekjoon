//12ms
import Foundation

let line = readLine()!.split(separator: " ").map{Int(String($0))!}
let N = line[0]
var K = line[1]
var coinArr = Array(repeating: 1000000, count: 10)

for i in 0..<N {
    let coinValue = Int(readLine()!)!
    coinArr[i] = coinValue
}

var count = 0

for i in (0..<N).reversed() {
    let nowCount = K / coinArr[i]
    K -= nowCount * coinArr[i]
    count += nowCount
    
    if K == 0 {
        break
    }
}
print(count)

//8ms
var line = readLine()!.split(separator: " ").map { Int(String($0))! }
var arr : [Int] = []
for _ in 1 ... line[0] {
    arr.insert(Int(readLine()!)!, at: 0)
}
var count = 0
while line[1] != 0 {
    count += line[1] / arr[0]
    line[1] %= arr[0]
    arr.remove(at: 0)
}
print(count)
