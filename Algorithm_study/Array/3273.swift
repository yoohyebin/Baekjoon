//52ms
let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
let x = Int(readLine()!)!
var result = 0
var start = 0, end = n-1

while start < end {
    switch arr[start] + arr[end] {
    case x:
        result += 1
        start += 1
        end -= 1
    case ..<x:
        start += 1
    default:
        end -= 1
    }
}
print(result)
