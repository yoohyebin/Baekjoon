//8ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0], l = input[1]
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
var result = 1, start = arr[0]

for i in arr[1..<n] {
    if i >= start && i < (start+l) {
        continue
    }else {
        start = i
        result += 1
    }
}

print(result)
