//8ms
let n = Int(readLine()!)!
var connect = [(Int, Int)]()
var result = Array(repeating: 1, count: n)

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    connect.append((input[0], input[1]))
}

connect.sort{$0.0 < $1.0}
let arr = connect.map{$0.1}

for i in 1..<n {
    for j in 0..<i {
        if arr[i] > arr[j] {
            result[i] = max(result[i], result[j]+1)
        }
    }
}

print(n - (result.max() ?? 0))
