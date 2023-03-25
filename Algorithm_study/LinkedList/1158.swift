//12ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr = Array(1...input[0])
var result = "<"
var index = 0

for _ in 0..<input[0]-1 {
    index = (index+input[1]-1)%arr.count
    result += String(arr.remove(at: index)) + ", "
}

print(result+String(arr.last!)+">")
