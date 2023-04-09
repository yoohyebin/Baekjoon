//352ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = input[0], n = input[1]
let dx = [-1, 1, 0, 0], dy = [0, 0, 1, -1]
var box = [[Int]](), depth = Array(repeating: Array(repeating: 0, count: m+1), count: n+1)
var queue = [(Int, Int)](), lastIndex = (0,0)
var flag = true, index = 0

for _ in 0..<n {
    box.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 0..<n {
    for j in 0..<m {
        if box[i][j] == 1 {
            queue.append((i,j))
        }
    }
}

func bfs() {
    while index < queue.count {
        let (x, y) = queue[index]
        index += 1
        
        for i in 0..<4 {
            let nx = x+dx[i], ny = y+dy[i]
            
            if  nx >= 0 && nx < n && ny >= 0 && ny < m{
                if box[nx][ny] == 0 {
                    box[nx][ny] = 1
                    depth[nx][ny] = depth[x][y]+1
                    queue.append((nx, ny))
                    lastIndex = (nx, ny)
                }
            }
        }
    }
}

bfs()
outLoop: for i in 0..<n {
    for j in 0..<m {
        if box[i][j] == 0{
            flag = false
            break outLoop
        }
    }
}
print(flag ? "\(depth[lastIndex.0][lastIndex.1])" : -1)

//224ms
import Foundation

let inputData = readLine()!.split(separator: " ").map { Int($0)! }

let (m, n) = (inputData[0], inputData[1])

var graph = [[Int]]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    graph.append(input)
}

func solution() -> Int {
    var result = 0
    var index = 0
    let dx = [0, -1, 0, 1]
    let dy = [-1, 0, 1, 0]
    var queue = [(Int, Int)]()
    
    for x in 0..<n {
        for y in 0..<m {
            if graph[x][y] == 1 {
                queue.append((x, y))
            }
        }
    }
    
    while index < queue.count {
        result += 1
        
        for _ in 0..<queue.count - index {
            let tomato = queue[index]
            index += 1
            for index in 0...3 {
                let nx = tomato.0 + dx[index]
                let ny = tomato.1 + dy[index]
                
                guard nx > -1 && nx < graph.count,
                        ny > -1 && ny < graph[nx].count,
                        graph[nx][ny] == 0 else { continue }
                queue.append((nx, ny))
                graph[nx][ny] = 1
            }
        }
    }
    
    for x in 0..<n {
        for y in 0..<m {
            if graph[x][y] == 0 {
                return -1
            }
        }
    }
    return result - 1
}

print(solution())
