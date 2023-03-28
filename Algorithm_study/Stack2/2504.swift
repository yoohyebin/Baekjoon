//8ms
let input = readLine()!.map{$0}
var stack = [Character]()
var result = 0, sum = 1, flag = true

for i in 0..<input.count {
    if input[i] == ")" {
        if stack.isEmpty || stack.last != "(" {
            flag = false
            break
        }
        if input[i-1] == "(" {result += sum}
        stack.removeLast()
        sum /= 2
    }else if input[i] == "]" {
        if stack.isEmpty || stack.last != "[" {
            flag = false
            break
        }
        if input[i-1] == "[" {result += sum}
        stack.removeLast()
        sum /= 3
    }else {
        stack.append(input[i])
        sum *= input[i] == "(" ? 2 : 3
    }
}
print(flag&&stack.isEmpty ? result : 0)
