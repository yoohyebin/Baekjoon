//28ms
let n = Int(readLine()!)!
var queue = [Int]()

for _ in 0..<n {
    let op = readLine()!.split(separator: " ").map{String($0)}
    
    switch op[0] {
    case "push":
        queue.append(Int(op[1])!)
    case "pop":
        print(queue.isEmpty ? -1 : queue.removeFirst())
    case "size":
        print("\(queue.count)")
    case "empty":
        print(queue.isEmpty ? 1 : 0)
    case "front":
        print(queue.isEmpty ? -1 : queue[0])
    default:
        print(queue.isEmpty ? -1 : queue.last!)
    }
}
