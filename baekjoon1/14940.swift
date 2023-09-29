let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (nm[0], nm[1])
var arr = [[Int]]()
var visited = Array(repeating: Array(repeating: false, count: m), count: n)
var dx = [1, -1, 0, 0], dy = [0, 0, 1, -1]
var queue = [(Int, Int)]()
var result = Array(repeating: Array(repeating: -1, count: m), count: n)

for i in 0..<n {
    let row = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    for j in 0..<m {
        if row[j] == 2 {
            queue.append((i,j))
            visited[i][j] = true
            result[i][j] = 0
        }
        else if row[j] == 0 {
            result[i][j] = 0
        }
    }
    
    arr.append(row)
}

while !queue.isEmpty {
    let (x,y) = queue.removeFirst()
    
    for i in 0..<4 {
        let nx = x+dx[i]
        let ny = y+dy[i]
        
        if nx >= 0 && nx < n && ny >= 0 && ny < m && !visited[nx][ny] && arr[nx][ny] == 1{
            queue.append((nx, ny))
            visited[nx][ny] = true
            result[nx][ny] = result[x][y]+1
        }
    }
}

for i in 0..<n {
    print(result[i].map{String($0)}.joined(separator: " "))
}
