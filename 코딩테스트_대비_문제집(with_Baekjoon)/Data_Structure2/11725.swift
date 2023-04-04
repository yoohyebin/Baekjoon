//504ms
let n = Int(readLine()!)!
var graph = [Int: [Int]]()

for _ in 0..<n-1 {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    graph[input[1], default: []].append(input[0])
    graph[input[0], default: []].append(input[1])
}

var queue = [1]
var parent = Array(repeating: 0, count: n+1)

while !queue.isEmpty {
    let now = queue.removeFirst()
    
    for i in graph[now] ?? [] {
        if parent[i] == 0 && i != 1 {
            parent[i] = now
            queue.append(i)
        }
    }
}

for i in 2...n {
    print(parent[i])
}

//224ms
import Foundation

let N = Int(readLine()!)!
var tree = Array(repeating: [Int](), count: N+1)
var visited = Array(repeating: false, count: N+1)
var rootNode = Array(repeating: [Int](), count: N+1)

for _ in 1..<N {
    let line = readLine()!.split(separator: " ").map {Int(String($0))!}
    tree[line[0]].append(line[1])
    tree[line[1]].append(line[0])
}

func dfs(_ root: Int) {
    visited[root] = true
    
    for i in tree[root] {
        if !visited[i] {
            rootNode[i].append(root)
            dfs(i)
        }
    }
}
dfs(1)
var result = ""
for i in 2...N {
    result += "\(rootNode[i][0]) \n"
}

print(result)
