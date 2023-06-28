//24ms
import Foundation

let n = Int(readLine()!)!
var graph: [[Character]] = []
var graphRB = graph
var resultRGB = 0
var resultRB = 0
for _ in 1...n{
    var input = String(readLine()!)
    graph.append(input.map{ ($0) })
    input = input.replacingOccurrences(of: "G", with: "R")
    graphRB.append(input.map{ ($0) })
}

for x in 0..<n{
    for y in 0..<n{
        if graph[x][y] != "A"{
            resultRGB += dfs(x: x, y: y, value: graph[x][y])
        }
    }
}
graph = graphRB
for x in 0..<n{
    for y in 0..<n{
        if graph[x][y] != "A"{
            resultRB += dfs(x: x, y: y, value: graph[x][y])
        }
    }
}

print(resultRGB, resultRB)

func dfs(x: Int, y: Int, value: Character) -> Int{
    if x < 0 || y < 0 || x >= n || y >= n{
        return 0
    }
    if graph[x][y] == value{
        graph[x][y] = "A"
        dfs(x: x-1, y: y, value: value)
        dfs(x: x+1, y: y, value: value)
        dfs(x: x, y: y-1, value: value)
        dfs(x: x, y: y+1, value: value)
    }
    return 1
}

//8ms
func dfs(_ x: Int, _ y: Int, _ isBlind: Bool, _ board: inout [[Character]], _ color: Character) -> Bool {
    if  x < 0 || x >= n || y < 0 || y >= n {
        return false
    }
    
    if isBlind {
        if color == "B" { /// 현재 B 구역일 때 R이나 G를 만나면 종료
            if board[x][y] == "R" || board[x][y] == "G" {
                return false
            }
        } else { /// 현재 R이나 G일 때 B를 만나면 종료
            if board[x][y] == "B" {
                return false
            }
        }
    } else {
        if board[x][y] != color {
            return false
        }
    }

    if board[x][y] != "V" {
        board[x][y] = "V"
        dfs(x + 1, y, isBlind, &board, color)
        dfs(x - 1, y, isBlind, &board, color)
        dfs(x, y + 1, isBlind, &board, color)
        dfs(x, y - 1, isBlind, &board, color)
        return true
    }
    
    return false
}

let n = Int(readLine()!)!
var board: [[Character]] = []
for _ in 0..<n {
    board.append(Array(readLine()!))
}
var board2 = board
var blindResult: Int = 0
var basicResult: Int = 0

for i in 0..<n {
    for j in 0..<n {
        if board[i][j] != "V" {
            dfs(i, j, true, &board, board[i][j])
            blindResult += 1
        }
        if board2[i][j] != "V" {
            dfs(i, j, false, &board2, board2[i][j])
            basicResult += 1
        }
    }
}

print(basicResult, blindResult)
