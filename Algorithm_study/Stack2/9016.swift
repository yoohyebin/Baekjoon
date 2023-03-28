//8ms
for i in 0..<Int(readLine()!)! {
    let input = readLine()!
    var stack = [Character]()
    var flag = true

    for s in input{
        if s == "(" {
            stack.append("(")
        }
        else {
            if stack.isEmpty {
                flag = false
                break
            }
            stack.removeLast()
        }
    }
    stack.isEmpty && flag ? print("YES") : print("NO")
}
