//12ms
var arr = Array(repeating: [0, 0], count: 6)
let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nk[0], k = nk[1]
var result = 0

for _ in 0..<n {
    let temp = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr[temp[1]-1][temp[0]] += 1
}

for i in 0..<6 {
    result += (arr[i][0]%k == 0 ? arr[i][0]/k : arr[i][0]/k+1)
    result += (arr[i][1]%k == 0 ? arr[i][1]/k : arr[i][1]/k+1)
}
print(result)
