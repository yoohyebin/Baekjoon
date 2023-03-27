//48ms
let n = Int(readLine()!)!
var stack = [Int]()

for _ in 0..<n {
    let num = Int(readLine()!)!
    if num == 0 {
        stack.removeLast()
    }else{
        stack.append(num)
    }
}
print(stack.reduce(0, +))
