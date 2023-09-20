//108ms
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
var box = [Int](), result = ""

func backtracking(_ depth: Int) {
    if depth == nm[1] {
        result += "\(box.map{String($0)}.joined(separator: " "))\n"
        return
    }
    
    for i in 0..<nm[0] {
        if box.contains(arr[i]) {
            continue
        }
        
        box.append(arr[i])
        backtracking(depth+1)
        box.popLast()
    }
}

backtracking(0)
print(result)
