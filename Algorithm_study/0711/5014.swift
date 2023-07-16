//52ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (f, s, g, u, d) = (input[0], input[1], input[2], input[3], input[4])
var result = 0

func bfs(_ start: Int) -> String{
    var queue = [(start, 0)]
    var visited = Array(repeating: false, count: f+1)
    visited[start] = true
    
    while !queue.isEmpty {
        let (floor, cnt) = queue.removeFirst()
        
        if floor == g {
            return "\(cnt)"
        }
        
        for x in [u, d] {
            let new = x == u ? floor+u : floor-d
            
            if new>=1 && new<=f && !visited[new] {
                queue.append((new, cnt+1))
                visited[new] = true
            }
        }
    }
    
    return "use the stairs"
}

print(bfs(s))
