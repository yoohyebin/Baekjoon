//1196ms
let n = Int(readLine()!)!
var stack = [Int]()
var result = ""

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    switch input[0] {
    case 1:
        stack.append(input[1])
    case 2:
        result += "\(stack.isEmpty ? -1 : stack.removeLast())\n"
    case 3:
        result += "\(stack.count)\n"
    case 4:
        result += "\(stack.isEmpty ? 1 : 0)\n"
    case 5:
        result += "\(stack.last ?? -1)\n"
    default:
        break
    }
}

print(result)
