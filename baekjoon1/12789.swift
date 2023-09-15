//8ms
let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var stack = [Int]()
var target = 1

while !arr.isEmpty {
    if arr[0] == target {
        arr.removeFirst()
        target += 1
    } else {
        stack.append(arr.removeFirst())
    }
    
    while !stack.isEmpty {
        if stack.last! == target {
            stack.removeLast()
            target += 1
        } else {
            break
        }
    }
}

print(stack.isEmpty ? "Nice" : "Sad")
