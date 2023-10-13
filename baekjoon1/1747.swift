var n = Int(readLine()!)!

while true {
    if String(n) == String(String(n).reversed()) {
        var flag = true
        
        if n >= 2 {
            for i in 2..<n {
                if n%i == 0{
                    flag = false
                    break
                }
            }
            
            if flag {
                print(n)
                break
            }
        }
    }
    n += 1
}
