//164ms
let n = Int(readLine()!)!
let arrA = readLine()!.split(separator: " ").map{Int(String($0))!}
let arrB = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = Int(readLine()!)!
var arrC = Array(readLine()!.split(separator: " ").map{Int(String($0))!}.reversed())

var queue = [Int]()
var result = ""

for i in 0..<n {
    if arrA[i] == 0 {
        queue.append(arrB[i])
    }
}

arrC += queue

for _ in 0..<m {
    result += ("\(arrC.popLast()!) ")
}

print(result)
