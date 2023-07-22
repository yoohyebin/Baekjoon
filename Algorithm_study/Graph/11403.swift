//24ms
let n = Int(readLine()!)!
var graph = [[Int]]()
var visited = Array(repeating: false, count: n)
var result = Array(repeating: Array(repeating: 0, count: n), count: n)

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

func dfs(_ start: Int, _ now: Int) {
    for i in 0..<n {
        if graph[now][i] == 1 && !visited[i] {
            result[start][i] = 1
            visited[i] = true
            dfs(start, i)
        }
    }
}

for i in 0..<n {
    dfs(i, i)
    visited = Array(repeating: false, count: n)
}

for i in result {
    for j in i {
        print(j, terminator: " ")
    }
    print()
}
