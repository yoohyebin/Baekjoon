//8ms
while true {
    let input = readLine()!
    
    if input == "0" {break}
    
    if input == String(input.reversed()) {
        print("yes")
    }else {
        print("no")
    }
}
