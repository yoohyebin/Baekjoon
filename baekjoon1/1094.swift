var n = Int(readLine()!)!
var result = 0

while n > 0 {
    result += n&1
    n >>= 1
}

print(result)
