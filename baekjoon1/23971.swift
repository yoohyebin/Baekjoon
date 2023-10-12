import Foundation

let arr  = readLine()!.split(separator: " ").map{Double(String($0))!}
let a = Int(ceil(arr[0]/(arr[2]+1)))
let b = Int(ceil(arr[1]/(arr[3]+1)))

print(a*b)
