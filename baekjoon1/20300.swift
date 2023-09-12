//20ms
let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
var b = [Int]()
var result = arr[n-1]

if n%2 == 1 {
    for i in 0..<n/2 {
        result = max(result, arr[i]+arr[n-i-2])
    }
} else {
    for i in 0..<n/2 {
        result = max(result, arr[i]+arr[n-i-1])
    }
}

print(result)
