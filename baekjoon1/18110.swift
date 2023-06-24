//156ms
import Foundation

let n = Int(readLine()!)!

if n == 0 {
    print(0)
}else {
    var arr = [Int]()
    let p = Int(round(Double(n)*0.15))

    for _ in 0..<n {
        arr.append(Int(readLine()!)!)
    }
    arr.sort()
    
    print(Int(round(Double(arr[p..<n-p].reduce(0, +))/Double(n-(2*p)))))
}
