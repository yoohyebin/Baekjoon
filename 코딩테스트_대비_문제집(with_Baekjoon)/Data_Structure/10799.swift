//16ms
let input = readLine()!.map{$0}
var stack = 0, result = 0
for (i, value) in input.enumerated() {
    if value == "(" {stack += 1}
    else{
        stack -= 1
        if input[i-1] == "(" {result += stack}
        else {result += 1}
    }
}
print(result)
