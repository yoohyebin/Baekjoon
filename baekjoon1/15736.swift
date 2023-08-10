//8ms
let n = Int(readLine()!)!
var result = 0, i = 1

while i*i <= n {
    result += 1
    i += 1
}

print(result)
