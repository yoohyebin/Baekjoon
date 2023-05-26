//8ms
let n = Int(readLine()!)!
var dict = [String: [String]]()
var results: [String] = ["", "", ""]

for _ in 0..<n {
    let tree = readLine()!.split(separator: " ").map{String($0)}
    dict[tree[0], default: []].append(tree[1])
    dict[tree[0], default: []].append(tree[2])
}

func dfs(_ node: String) {
    if node == "." {
        return
    }
    results[0] += node
    dfs(dict[node]![0])
    results[1] += node
    dfs(dict[node]![1])
    results[2] += node
}

dfs("A")

for result in results {
    print(result)
}
