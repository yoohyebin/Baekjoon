//372ms
let n = Int(readLine()!)!
var towers = readLine()!.split(separator: " ").map{Int(String($0))!}
var stack = [Int]()
var result = Array(repeating: 0, count: n)

for i in stride(from: n-1, through: 0, by: -1) {
    while !stack.isEmpty && towers[i] > towers[stack.last!] {
        let index = stack.removeLast()
        result[index] = i+1
    }
    stack.append(i)
}

print(result.map{String($0)}.joined(separator: " "))
