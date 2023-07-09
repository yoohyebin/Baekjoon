//228ms
let n = Int(readLine()!)!
var arr = [[Int]]()
var visited = Array(repeating: false, count: n)
var team1 = 0
var team2 = 0
var minValue = Int.max

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}


func dfs(_ depth: Int, _ start: Int) {
    if depth == n/2 {
        team1 = 0
        team2 = 0
        for i in 0..<n{
            for j in 0..<n{
                if !visited[i] && !visited[j]{
                    team2 += arr[i][j]
                }
                if visited[i] && visited[j] {
                    team1 += arr[i][j]
                }
            }
        }
        minValue = min(minValue, abs(team1 - team2))
        return
    }
    
    for i in start..<n {
        if !visited[i] {
            visited[i] = true
            dfs(depth + 1, i)
            visited[i] = false
        }
    }
}

dfs(0, 0)
print(minValue)
