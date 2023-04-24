//20ms, 조건 안 지킴
let n = Int(readLine()!)!
let arrA = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
let arrB = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted(by: >)
var result = 0

for i in 0..<n {
    result += (arrA[i]*arrB[i])
}
print(result)

//8ms
let n = Int(readLine()!)!
var arrA = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
var arrB = readLine()!.split(separator: " ").map{Int(String($0))!}
var result = 0

for i in 0..<n {
    result += (arrA[i]*arrB.max()!)
    arrB.remove(at: arrB.firstIndex(of: arrB.max()!)!)
}

print(result)
