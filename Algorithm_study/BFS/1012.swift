//16ms
let testCase = Int(readLine()!)!

func dfs(_ x: Int, _ y: Int, _ land: inout [[Int]], _ m: Int, _ n: Int) {
    // 땅 크기 안에 해당하지 않거나, 1이 아닐 경우에 함수 종료
    if x < 0 || x >= n || y < 0 || y >= m || land[x][y] != 1 { return }
    
    land[x][y] = 0 // 이미 체크한 자리는 0으로 바꿔주기
    
    // 재귀 호출 (현재 자리와 붙어있는 주변 모든 자리 확인)
    dfs(x+1, y, &land, m, n) // 세로로 다음 자리
    dfs(x-1, y, &land, m, n) // 세로로 전 자리
    dfs(x, y+1, &land, m, n) // 가로로 다음 자리
    dfs(x, y-1, &land, m, n) // 가로로 전 자리
}

for _ in 0..<testCase {
    let input = readLine()!.split(separator: " ").map({Int(String($0))!})
    let m = input[0] // 배추밭 가로 길이
    let n = input[1] // 배추밭 세로 길이
    let num = input[2] // 배추 개수
    var land = Array(repeating: Array(repeating: 0, count:  m), count: n)
    var count = 0
    
    // 배추 있는 자리는 다 1로 채워주기
    for _ in 0..<num {
        let location = readLine()!.split(separator: " ").map({Int(String($0))!})
        land[location[1]][location[0]] = 1
    }
    
    // 땅 전부 검사하면서 1있으면 dfs 돌리기
    for i in 0..<n {
        for j in 0..<m {
            if land[i][j] == 1 {
                count += 1
                dfs(i, j, &land, m, n)
            }
        }
    }
    
    print(count)
}


//12ms
let dx = [1, 0 , -1, 0]
let dy = [0, 1, 0 , -1]

func findSideCabbage(_ x: Int, _ y:Int, _ map:[[Int]], _ visit:inout [[Bool]], _ row:Int, _ column:Int) {
    if map[x][y] != 1 && !visit[x][y] {
        return
    } else {
        visit[x][y] = true
    }
    
    for i in 0...3 {
        let nextX = x + dx[i]
        let nextY = y + dy[i]
        if nextX < 0 || nextY < 0 || nextX >= row || nextY >= column { continue }
        
        if map[nextX][nextY] == 1 && !visit[nextX][nextY] {
            findSideCabbage(nextX, nextY, map, &visit, row, column)
        }
    }
}

let testCase = Int(readLine()!)!

for _ in 0 ..< testCase {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let (m, n) = (input[0], input[1])
    var map: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: m)
    var visit: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: m)
    
    for _ in 0 ..< input[2] {
        let pointInput = readLine()!.split(separator: " ").map{Int($0)!}
        map[pointInput[0]][pointInput[1]] = 1
    }
    
    var result = 0
    for i in 0 ..< m {
        for j in 0 ..< n {
            if map[i][j] == 1 && !visit[i][j] {
                findSideCabbage(i, j, map, &visit, m, n)
                result += 1
            }
        }
    }
    print(result)
}
