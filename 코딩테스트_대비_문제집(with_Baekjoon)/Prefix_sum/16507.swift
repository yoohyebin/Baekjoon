let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (R, C, K) = (input[0], input[1], input[2])
var arr = Array(repeating: Array(repeating: 0, count: 1001), count: 1001)

for i in 1...R {
    let data = readLine()!.split(separator: " ").map{Int(String($0))!}
    for j in 1...C {
        arr[i][j] = arr[i-1][j] + arr[i][j-1] - arr[i-1][j-1] + data[j-1]
    }
}

for _ in 0..<K {
    let abcd = readLine()!.split(separator: " ").map{Int(String($0))!}
    let(a,b,c,d) = (abcd[0], abcd[1], abcd[2], abcd[3])
    let s = arr[c][d] - arr[a-1][d] - arr[c][b-1] + arr[a-1][b-1]
    let z = (c-a+1) * (d-b+1)
    print("\(s/z)")
}
