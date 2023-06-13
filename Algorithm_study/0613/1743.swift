let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0], m = input[1], k = input[2]
var arr = Array(repeating: Array(repeating: false, count: m), count: n)
var cnt = 0, result = 0

func dfs(_ x: Int, _ y: Int) {
    if x<0 || y<0 || x>=n || y>=m {
        return
    }
    if arr[x][y] {
        arr[x][y] = false
        dfs(x, y-1)
        dfs(x, y+1)
        dfs(x-1, y)
        dfs(x+1, y)
        cnt += 1
        return
    }
    return
}

for _ in 0..<k {
    let i = readLine()!.split(separator: " ").map{Int(String($0))!-1}
    arr[i[0]][i[1]] = true
}

for x in  0..<n {
    for y in 0..<m {
        cnt = 0
        if arr[x][y] {
            dfs(x, y)
            result = max(result, cnt)
        }
    }
}
print(result)
