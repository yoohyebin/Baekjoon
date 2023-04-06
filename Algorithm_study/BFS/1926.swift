//96ms
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
var n = nm[0], m = nm[1]
var map = [[Int]]()
var visited = Array(repeating: Array(repeating: false, count: m), count: n)
var dx = [-1, 1, 0, 0], dy = [0 ,0, 1, -1]
var max_num = 0, num = 0

for _ in 0..<n {
    map.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 0..<n {
    for j in 0..<m {
        if map[i][j] == 0 || visited[i][j] {continue}
        num += 1
        var queue = [(Int,Int)]()
        var area = 0
        visited[i][j] = true
        queue.append((i,j))
        
        while !queue.isEmpty {
            area += 1
            let (x,y) = queue.removeFirst()
            
            for dir in 0..<4 {
                let nx = x + dx[dir]
                let ny = y + dy[dir]
                
                if nx<0 || nx>=n || ny<0 || ny>=m {continue}
                if visited[nx][ny] || map[nx][ny] != 1 {continue}
                visited[nx][ny] = true
                queue.append((nx, ny))
            }
        }
        max_num = max(max_num, area)
    }
}

print("\(num)\n\(max_num)")
