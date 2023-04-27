//76ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0], m = input[1]
var arr = [Int]()

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

arr.sort()
var result = Int.max
var start = 0, end = 1

while start < n && end < n {
    let k = arr[end] - arr[start]
    if k == m{
        print(m)
    }
    if k < m {
        end += 1
        continue
    }
    start += 1
    result = min(result, k)
}
print(result)
