//BFS, 8ms
let n = Int(readLine()!)!
let dx = [-1, 1, 0 , 0], dy = [0, 0, 1, -1]
var house = [[Int]]()
var result = [Int](), cnt = 0

for _ in 0..<n {
    house.append(readLine()!.map{Int(String($0))!})
}

func bfs(_ a: Int, _ b: Int) {
    var queue = [(a , b)]
    house[a][b] = 0
    cnt += 1
    
    while !queue.isEmpty {
        let (x, y) = queue.removeFirst()
        
        for i in 0..<4 {
            let nx = x+dx[i]
            let ny = y+dy[i]
            
            if nx<0 || nx>=n || ny<0 || ny>=n {
                continue
            }
            
            if house[nx][ny] == 1{
                house[nx][ny] = 0
                queue.append((nx, ny))
                cnt += 1
            }
        }
    }
}

for i in 0..<n {
    for j in 0..<n {
        if house[i][j] == 1 {
            cnt = 0
            bfs(i, j)
            result.append(cnt)
        }
    }
}

print(result.count)
result.sort()
print(result.map{String($0)}.joined(separator: "\n"))

//DFS, 8ms
let n = Int(readLine()!)!
let dx = [-1, 1, 0 , 0], dy = [0, 0, 1, -1]
var house = [[Int]]()
var visited = Array(repeating: Array(repeating: false, count: n), count: n)
var result = [Int](), cnt = 0

for _ in 0..<n {
    house.append(readLine()!.map{Int(String($0))!})
}

func dfs(_ x: Int, _ y: Int) {
    if visited[x][y] {return}
    
    visited[x][y] = true
    
    if house[x][y] == 1 {
        cnt += 1
        for i in 0..<4 {
            let nx = x+dx[i]
            let ny = y+dy[i]
            if nx>=0 && nx<n && ny>=0 && ny<n{
                dfs(nx, ny)
            }
        }
    }
}

for i in 0..<n {
    for j in 0..<n {
        if !visited[i][j] && house[i][j] == 1 {
            cnt = 0
            dfs(i, j)
            result.append(cnt)
        }
    }
}

print(result.count)
result.sort()
print(result.map{String($0)}.joined(separator: "\n"))
