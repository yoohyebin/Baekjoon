//1676ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (v, e) = (input[0], input[1])
var arr = Array(repeating: Array(repeating: Int.max/2, count: v+1), count: v+1)


for _ in 0..<e {
    let abc = readLine()!.split(separator: " ").map{Int(String($0))!}
    let (a, b, c) = (abc[0], abc[1], abc[2])
    arr[a][b] = c
}

for k in 1...v {
    for i in 1...v {
        for j in 1...v {
            if arr[i][k] == Int.max || arr[k][j] == Int.max { continue }
            arr[i][j] = min(arr[i][j], arr[i][k]+arr[k][j])
        }
    }
}


var result = Int.max
for i in 1...v {
   result = min(result, arr[i][i])
}

print(result == Int.max ? -1 : result)
