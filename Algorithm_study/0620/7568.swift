//12ms
let n = Int(readLine()!)!
var arr = [[Int]]()
var result = [Int]()

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 0..<n {
    var rank = 1
    for j in 0..<n {
        if j == i {continue}
        if (arr[i][0] < arr[j][0]) && (arr[i][1] < arr[j][1]) {
            rank += 1
        }
    }
    result.append(rank)
}

print(result.map{String($0)}.joined(separator: " "))
