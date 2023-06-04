//24ms
let n = Int(readLine()!)!
let m = Int(readLine()!)!
var frieds = [Int: [Int]]()
var visited = Array(repeating: false, count: 501)
var result = 0

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    frieds[input[0], default: []].append(input[1])
    frieds[input[1], default: []].append(input[0])
}

func dfs(_ now: Int, _ depth: Int){
    if depth == 2 {return}
    
    for i in 0..<(frieds[now]?.count ?? 0) {
        let next = frieds[now]![i]
        visited[next] = true;
        dfs(next, depth + 1);
    }
}
visited[1] = true
dfs(1, 0)

for i in 2...n {
    if visited[i] {result += 1}
}

print(result)
