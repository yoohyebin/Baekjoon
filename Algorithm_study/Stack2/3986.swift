//40ms
let n = Int(readLine()!)!
var result = 0

for _ in 0..<n {
    let inputString = readLine()!
    var stack = [Character]()
    
    for s in inputString {
        if stack.last == s {
            stack.removeLast()
        }else {
            stack.append(s)
        }
    }
    if stack.isEmpty{
        result += 1
    }
}
print(result)
