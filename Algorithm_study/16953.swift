//8ms
let ab = readLine()!.split(separator: " ").map{Int(String($0))!}
let a = ab[0], b = ab[1]
var result = Int.max

func dfs(_ a: Int, _ cnt: Int) {
    if a > b {
        return
    }
    if a == b {
        result = min(result, cnt)
    }
    
    dfs(a * 2, cnt + 1)
    dfs(a * 10 + 1, cnt + 1)
}

dfs(a, 1)
print(result == Int.max ? -1 : result)
