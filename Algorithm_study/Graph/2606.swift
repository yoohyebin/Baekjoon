//12ms
let computerN = Int(readLine()!)!
let networkN = Int(readLine()!)!
var network = [Int: [Int]]()

for _ in 0..<networkN {
    let t = readLine()!.split(separator: " ").map{Int(String($0))!}
    network[t[0], default: [Int]()].append(t[1])
    network[t[1], default: [Int]()].append(t[0])
}
var visited = [Int]()
var stack: [Int] = [1]

while !stack.isEmpty {
    let temp = stack.popLast()!
    if !visited.contains(temp) {
        visited.append(temp)
        let temp2 = network[temp]!
        stack += temp2
    }
}

print(visited.count-1)

//8ms
let N = Int(readLine()!)!
let M = Int(readLine()!)!
var nodes = Array(repeating : [Int](),count:N+1)
for _ in 0..<M {
    let inp = readLine()!.split(separator : " " ).map{Int(String($0))!}
    nodes[inp[0]].append(inp[1])
    nodes[inp[1]].append(inp[0])
}

var visit = Array(repeating : false, count  : N+1)
var count = 0

func dfs(_ cur : Int ) {
    visit[cur] = true
    
    for n in nodes[cur] {
        if visit[n] { continue }
        count+=1
        dfs(n)
    }
}

dfs(1)
print(count)
