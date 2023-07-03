//20ms
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var stack = [Int]()
var result = ""

func dfs(_ start: Int) {
    if stack.count == m {
        result += stack.map{String($0)}.joined(separator: " ")
        result += "\n"
        return
    }
    for i in start...n {
        stack.append(i)
        dfs(i)
        stack.removeLast()
    }
}

dfs(1)
print(result)
