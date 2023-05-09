//16ms
let dx = [1, 1, 0, -1, -1, -1, 0, 1]
let dy = [0, 1, 1, 1, 0, -1, -1, -1]

while true {
    let wh = readLine()!.split(separator: " ").map { Int(String($0))! }
    let w = wh[0], h = wh[1]
    if w == 0 && h == 0 {
        break
    }
    
    var map = [[Int]]()
    for _ in 0..<h {
        map.append(readLine()!.split(separator: " ").map { Int(String($0))! })
    }
    
    var result: Int = 0
    
    func bfs(_ x: Int, _ y: Int) {
        var queue: [(Int, Int)] = [(x, y)]
            
        while !queue.isEmpty {
            let node = queue.removeFirst()
            for i in 0..<8 {
                let (nx, ny) = (node.0 + dx[i], node.1 + dy[i])
                if (0..<h).contains(nx) && (0..<w).contains(ny) {
                    if map[nx][ny] == 1 {
                        map[nx][ny] = 0
                        queue.append((nx, ny))
                    }
                }
            }
        }
    }
    
    for i in 0..<h {
        for j in 0..<w {
            if map[i][j] == 1 {
                result += 1
                bfs(i, j)
            }
        }
    }
    print(result)
}
