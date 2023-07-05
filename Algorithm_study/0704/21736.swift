//112ms
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var arr = [[String]]()
var visited = Array(repeating: Array(repeating: false, count: m), count: n)
var result = 0
var dx = [-1, 1, 0, 0], dy = [0, 0, -1, 1]
var (x, y) = (0, 0)

for i in 0..<n {
    let input = readLine()!.map{String($0)}
    arr.append(input)
    if input.contains("I"){
        x = i
        y = input.firstIndex(of: "I")!
    }
}

func dfs(_ x: Int, _ y: Int) {
    if x>=0 && x<n && y>=0 && y<m && !visited[x][y] {
        visited[x][y] = true
        
        if arr[x][y] == "P" {
            result += 1
        }
        
        for i in 0..<4 {
            let nx = x+dx[i]
            let ny = y+dy[i]
            if nx>=0 && nx<n && ny>=0 && ny<m && !visited[nx][ny] {
                if arr[nx][ny] != "X"{
                    dfs(nx,ny)
            }
            }
        }
    }
}
dfs(x, y)

print(result == 0 ? "TT" : "\(result)")
