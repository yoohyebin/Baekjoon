//12ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0], m = input[1]
var map = [[Int]](), distance = Array(repeating: Array(repeating: 0, count: m), count: n)
var visited = Array(repeating: Array(repeating: false, count: m), count: n)
var cnt = 0

let dx = [0, 0, -1, 1]
let dy = [-1, 1, 0, 0]

for _ in 0..<n {
    map.append(readLine()!.map{Int(String($0))!})
}

func bfs() {
    distance[0][0] = 1
    visited[0][0] = true
    
    var queue: [[Int]] = [[0,0]]
    while !queue.isEmpty {
        let pop = queue.removeFirst()
        
        let x = pop[0]
        let y = pop[1]
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx >= 0 && nx < n && ny >= 0 && ny < m {
                if !visited[nx][ny] && map[nx][ny] == 1 {
                    distance[nx][ny] = distance[x][y] + 1
                    
                    visited[nx][ny] = true
                    queue.append([nx, ny])
                }
            }
        }
    }
}

bfs()
print(distance[n-1][m-1])
