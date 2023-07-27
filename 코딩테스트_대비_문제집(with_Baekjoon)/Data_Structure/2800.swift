//12ms
let input = readLine()!.map{String($0)}
var stack = [Int]()
var index = [(Int, Int)]()
var result = Set<String>()
var visited = Array(repeating: false, count: input.count)

for (i, s) in input.enumerated() {
    if s == "(" {
        stack.append(i)
    }else if s == ")" {
        index.append((stack.removeLast(), i))
    }
}

func dfs(_ idx: Int, _ cnt: Int) {
    if cnt >= 1 {
        var tmp = ""
        
        for i in 0..<input.count {
            if !visited[i] {
                tmp += input[i]
            }
        }
        result.insert(tmp)
    }
    
    for i in idx..<index.count {
        visited[index[i].0] = true
        visited[index[i].1] = true
        dfs(i+1, cnt+1)
        visited[index[i].0] = false
        visited[index[i].1] = false
    }
}

dfs(0,0)

print(result.sorted().joined(separator: "\n"))
