let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    var result = 0
    var i = 5
    
    while i <= n {
        result += (n/i)
        i *= 5
    }
    
    print(result)
}
