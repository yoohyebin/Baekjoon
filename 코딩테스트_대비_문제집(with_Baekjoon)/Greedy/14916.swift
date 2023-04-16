//8ms
var n = Int(readLine()!)!
var result = 0

while n > 0 {
    if n%5 == 0 {
        result += n/5
        break
    }else{
        n -= 2
        result += 1
    }
}

print(n < 0 ? "\(-1)" : "\(result)")
