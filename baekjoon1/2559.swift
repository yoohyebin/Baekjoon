//40ms
let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var array = [0] + readLine()!.split(separator: " ").map { Int($0)! }
var result = Int.min

for i in 1...n {
    array[i] += array[i - 1]
}

for i in 0...n - k {
    result = max(result, array[i + k] - array[i])
}

print(result)
