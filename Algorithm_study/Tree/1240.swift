//44ms
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (nm[0], nm[1])
var tree = Array(repeating: [(Int, Int)](), count: n+1)

for _ in 0..<n-1 {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    tree[input[0]].append((input[1], input[2]))
    tree[input[1]].append((input[0], input[2]))
}

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    print(bfs(input[0], input[1]))
}

func bfs(_ start: Int, _ find: Int) -> Int {
    var queue = [(Int, Int)]()
    var visited = Array(repeating: false, count: n+1)
    queue.append((start, 0))
    visited[start] = true
    
    while !queue.isEmpty {
        let (v, d) = queue.removeFirst()
        
        if v == find {
            return d
        }
        
        for (i, l) in tree[v] {
            if !visited[i] {
                visited[i] = true
                queue.append((i , d+l))
            }
        }
    }
    return Int.max
}
