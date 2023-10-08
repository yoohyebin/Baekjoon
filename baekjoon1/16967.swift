let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (h,w,x,y) = (input[0], input[1], input[2], input[3])
var arr = [[Int]]()
var result = ""

for _ in 0..<h+x {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in x..<h {
    for j in y..<w {
        arr[i][j] -= arr[i-x][j-y]
    }
}

for i in 0..<h {
    for j in 0..<w {
        result += "\(arr[i][j]) "
    }
    result += "\n"
}

print(result)
