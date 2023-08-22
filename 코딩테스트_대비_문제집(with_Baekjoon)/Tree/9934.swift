//12ms
let k = Int(readLine()!)!
let graph = readLine()!.split(separator: " ").map{Int(String($0))!}
var result = Array(repeating: [Int](), count: 11)

func tree(_ depth: Int, _ start: Int, _ end: Int) {
    if start >= end {
        return
    }
    
    let mid = (start+end)/2
    result[depth].append(graph[mid])
    tree(depth+1, start, mid)
    tree(depth+1, mid+1, end)
}

tree(0, 0, graph.count)

for i in 0..<k {
    print(result[i].map{String($0)}.joined(separator: " "))
}
