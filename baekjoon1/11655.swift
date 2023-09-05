let s = readLine()!
var result = ""

for ch in s {
    var rot13 = ch.asciiValue!
    
    if rot13 >= 65 && rot13 <= 90 {
        rot13 += 13
        if rot13 > 90 {
            rot13 -= 26
        }
    } else if rot13 >= 97 && rot13 <= 122 {
        rot13 += 13
        if rot13 > 122 {
            rot13 -= 26
        }
    }
    result += "\(UnicodeScalar(rot13))"
}

print(result)
