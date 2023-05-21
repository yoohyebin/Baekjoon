//20ms
import Foundation

let n = Int(readLine()!)!
var arr = [Double]()

for _ in 0..<n {
    arr.append(Double(readLine()!)!)
}

for i in 1..<n {
    if arr[i] < arr[i]*arr[i-1] {
        arr[i] *= arr[i-1]
    }
}
print(String(format: "%.3f", (arr.max()! * 1000).rounded() / 1000))
