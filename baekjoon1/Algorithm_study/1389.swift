///8ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0], m = input[1]

var board: [[Int]] = Array(repeating: Array(repeating: 0, count: n + 1), count: n + 1)
var visited: [Bool] = Array(repeating: false, count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    board[input[0]].append(input[1])
    board[input[1]].append(input[0])
}

func bfs(_ start: Int) -> Int{
    var num = Array(repeating: 0, count: n+1)
    var queue = [Int]()
    visited[start] = true
    queue.append(start)
    
    while !queue.isEmpty {
        let a = queue.removeFirst()
        
        for i in board[a] {
            if !visited[i] {
                num[i] = num[a]+1
                queue.append(i)
                visited[i] = true
            }
        }
    }
    
    return num.reduce(0, +)
}
var result = [Int]()

for i in 1...n {
    visited = Array(repeating: false, count: n+1)
    result.append(bfs(i))
}

print(result.firstIndex(of: result.min()!)!+1)
