//20ms
let dx = [-1, 1, 0, 0], dy = [0, 0, -1, 1]
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (input[0], input[1])
var map = [[Int]]()
var cheeseCnt = [Int]()
var time = 0, cnt = 0

for _ in 0..<n {
    map.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

func bfs() -> Int {
    var visited = Array(repeating: Array(repeating: false, count: m), count: n)
    var queue = [(Int, Int)]()
    queue.append((0, 0))
    visited[0][0] = true
    cnt = 0
    
    while !queue.isEmpty {
        let xy = queue.removeFirst()
        let x = xy.0, y = xy.1
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
                       
            if nx >= 0, nx < n, ny >= 0, ny < m, !visited[nx][ny] {
                if map[nx][ny] == 0 {
                    visited[nx][ny] = true
                    queue.append((nx, ny))
                }else if map[nx][ny] == 1 {
                    visited[nx][ny] = true
                    map[nx][ny] = 0
                    cnt += 1
                }
            }
        }
    }
    cheeseCnt.append(cnt)
    return cnt
}

while true {
    time += 1
    cnt = bfs()
    if cnt == 0 {
        break
    }
}

print(time-1)
print(cheeseCnt[cheeseCnt.count-2])
