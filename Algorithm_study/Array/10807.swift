// 8ms
let _ = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
let v = Int(readLine()!)!
print(arr.filter{$0 == v}.count)
