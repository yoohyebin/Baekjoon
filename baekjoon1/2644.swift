let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (a, b) = (input[0], input[1])
let m = Int(readLine()!)!
var people = Array(repeating: [Int](), count: n+1)
var visited = Array(repeating: false, count: n+1)
var result = 0

for _ in 0..<m {
    let data = readLine()!.split(separator: " ").map{Int(String($0))!}
    people[data[0]].append(data[1])
    people[data[1]].append(data[0])
}

func dfs(_ v: Int, _ num: Int) {
    let num = num+1
    visited[v] = true
    
    if v == b {
        result = num
        return
    }
    for i in people[v] {
        if !visited[i] {
            dfs(i, num)
        }
    }
}

dfs(a, 0)

print(result == 0 ? -1 : result-1)
