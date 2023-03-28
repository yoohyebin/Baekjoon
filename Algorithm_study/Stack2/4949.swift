//24ms
while true {
    let inputString = readLine()!
    if inputString == "." {
        break
    }
    
    var stack = [Character](), flag = true
    
    for s in inputString {
        if s == "(" || s == "[" {
            stack.append(s)
        }else if s == ")"{
            if stack.isEmpty || stack.last! != "(" {
                flag = false
                break
            }
            stack.removeLast()
        }else if s == "]"{
            if stack.isEmpty || stack.last! != "[" {
                flag = false
                break
            }
            stack.removeLast()
        }
    }
    print(flag&&stack.isEmpty ? "yes" : "no")
}
