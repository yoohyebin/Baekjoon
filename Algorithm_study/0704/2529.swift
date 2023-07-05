//48ms
let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{String($0)}
var visited = Array(repeating: false, count: 10)
var result = [String]()
var stack = [Int]()

func solution(_ depth: Int, _ now: Int) {
    if depth == n+1 {
        result.append(stack.map{String($0)}.joined())
        return
    }
    
    for i in 0...9 {
        if !visited[i] {
            if depth > 0 {
                if now <= i && arr[depth-1] == ">" {continue}
                else if now >= i && arr[depth-1] == "<" {continue}
            }
            visited[i] = true
            stack.append(i)
            solution(depth+1, i)
            stack.removeLast()
            visited[i] = false
        }
    }
}

solution(0, 0)
print(result.max()!)
print(result.min()!)


//8ms
let N = Int(readLine()!)!
let seq = readLine()!.split(separator: " ").map { $0 }
let nums = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

var visited = Array(repeating: false, count: 10)
var temp: [Int] = []
var answer: [String] = []
var exit = false

func maxDFS(_ current: Int, _ depth: Int) {
    if exit { return }

    if depth == N+1 {
        exit = true
        answer.append(temp.map { String($0) }.joined())
        return
    }

    for i in nums.reversed() {
        guard !visited[i] else { continue }

        if depth != 0 {
            if seq[depth-1] == "<" && current >= i { continue }
            if seq[depth-1] == ">" && current <= i { continue }
        }

        visited[i] = true
        temp.append(i)
        maxDFS(i, depth + 1)
        visited[i] = false
        temp.removeLast()
    }
}

func minDFS(_ current: Int, _ depth: Int) {
    if exit { return }

    if depth == N+1 {
        exit = true
        answer.append(temp.map { String($0) }.joined())
        return
    }

    for i in nums {
        guard !visited[i] else { continue }

        if depth != 0 {
            if seq[depth-1] == "<" && current >= i { continue }
            if seq[depth-1] == ">" && current <= i { continue }
        }

        visited[i] = true
        temp.append(i)
        minDFS(i, depth + 1)
        visited[i] = false
        temp.removeLast()
    }
}

maxDFS(0, 0)
print(answer.max()!)
exit = false
minDFS(0, 0)
print(answer.min()!)
